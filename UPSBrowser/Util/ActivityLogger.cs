using Microsoft.SharePoint;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace Kcell.UPSBrowser
{
    enum LogActivityActionEnum { Create, Update, Delete, Import, AddToGroup, RemoveFromGroup };
    enum LogActivityResultEnum { Success, Error };

    class ActivityRecord
    {
        public string user;
        public LogActivityActionEnum action;
        public LogActivityResultEnum result;
        public string additionalInfo;
    }

    static class ActivityLogger
    {
        private static UPSBrowserLogger.Categories loggingCategory = UPSBrowserLogger.Categories.FakeUPSUsersDAL;
        public static string ActivityLoggerListInternalName = "upsbrowser_activities";
        public static string ActivityLoggerListTitle = "UPSBrowser activities";

        public static void LogActivity(string user, LogActivityActionEnum action, LogActivityResultEnum result, string additionalInfo = "")
        {
            // Log to SharePoint tracing log
            UPSBrowserLogger.LogActivity(user, action.ToString(), result.ToString(), additionalInfo);

            EnsureActivitiesList();
            AddActivityToList(user, action, result, additionalInfo);
        }


        public static Tuple<string, string> EnsureActivitiesList()
        {
            string currentSiteUrl = SPContext.Current.Site.Url;
            Tuple<string, string> result = null;

            SPSecurity.RunWithElevatedPrivileges(delegate ()
            {
                try
                {
                    using (SPSite site = new SPSite(currentSiteUrl))
                    using (SPWeb rootWeb = site.OpenWeb())
                    {
                        rootWeb.AllowUnsafeUpdates = true;

                        SPList extistingList = rootWeb.Lists.TryGetList(ActivityLoggerListTitle);
                        if (extistingList != null)
                        {
                            result = Tuple.Create(extistingList.ID.ToString(), extistingList.DefaultView.ID.ToString());
                            return;
                        }

                        SPListCollection lists = rootWeb.Lists;
                        lists.Add(ActivityLoggerListInternalName, "UPSBrowser logged activities", SPListTemplateType.GenericList);
                        SPList list = rootWeb.Lists[ActivityLoggerListInternalName];

                        list.Title = ActivityLoggerListTitle;
                        list.Fields.Add("RegisteredDate", SPFieldType.DateTime, true);
                        list.Fields.Add("Initiator", SPFieldType.Text, true);
                        list.Fields.Add("User", SPFieldType.Text, true);
                        list.Fields.Add("Action", SPFieldType.Text, true);
                        list.Fields.Add("Result", SPFieldType.Text, true);
                        list.Fields.Add("AdditionalInfo", SPFieldType.Text, false);
                        list.Update();

                        SPView view = list.DefaultView;
                        view.ViewFields.Add("RegisteredDate");
                        view.ViewFields.Add("Initiator");
                        view.ViewFields.Add("User");
                        view.ViewFields.Add("Action");
                        view.ViewFields.Add("Result");
                        view.ViewFields.Add("AdditionalInfo");
                        view.Update();

                        rootWeb.AllowUnsafeUpdates = false;

                        result = Tuple.Create(list.ID.ToString(), list.DefaultView.ID.ToString());
                    };
                }
                catch (Exception e)
                {
                    UPSBrowserLogger.LogError(loggingCategory, $"Error creating list '{ActivityLoggerListTitle}' in the root web at {currentSiteUrl}. Exception: {e.Message}");
                    return;
                };
            });

            return result;
        }

        static void AddActivityToList(string user, LogActivityActionEnum action, LogActivityResultEnum result, string additionalInfo = "")
        {
            // Add activity info record to the list stored in the session storage so that it will available for display

            /*
            HttpContext currentContext = HttpContext.Current;
            if (currentContext == null)
            {
                UPSBrowserLogger.LogError(loggingCategory, "Current HttpContext is null");
                return;
            };
            */
            string currentSiteUrl = SPContext.Current.Site.Url;
            string initiator = SPContext.Current.Web.CurrentUser.LoginName;
            SPSecurity.RunWithElevatedPrivileges(delegate ()
            {
                try
                {
                    using (SPSite site = new SPSite(currentSiteUrl))
                    using (SPWeb rootWeb = site.OpenWeb())
                    {
                        rootWeb.AllowUnsafeUpdates = true;

                        SPList list = rootWeb.Lists.TryGetList(ActivityLoggerListTitle);
                        if (list == null)
                        {
                            UPSBrowserLogger.LogError(loggingCategory, $"List '{ActivityLoggerListTitle}' not found in the root web at {currentSiteUrl}");
                            return;
                        }

                        SPListItem item = list.Items.Add();
                        item["RegisteredDate"] = DateTime.Now;
                        item["Initiator"] = initiator;
                        item["User"] = user;
                        item["Action"] = action.ToString();
                        item["Result"] = result.ToString();
                        item["AdditionalInfo"] = additionalInfo;
                        item.Update();

                        rootWeb.AllowUnsafeUpdates = false;
                    };
                }
                catch (Exception e)
                {
                    UPSBrowserLogger.LogError(loggingCategory, $"Error adding record to the list list {ActivityLoggerListTitle} in the root web at {currentSiteUrl}. Exception: {e.Message}");
                    return;
                };
            });


        }
    }
}
