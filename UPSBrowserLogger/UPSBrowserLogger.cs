using Microsoft.SharePoint;
using Microsoft.SharePoint.Administration;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace Kcell.UPSBrowser
{

    [Guid("19fe14ad-6778-4a72-b77d-e0d9d622dbd4")]
    public class UPSBrowserLogger : SPDiagnosticsServiceBase
    {

        private const string LOG_AREA = "UPSBrowser";


        public enum Categories
        {
            General,
            ActivityLogging,
            MainPage,
            UpsUserForm,
            ImportUsersForm,
            UPSUsersDAL,
            WSExternalUsersSource,
            FakeUPSUsersDAL
        }


        public UPSBrowserLogger()
        {
        }


        public UPSBrowserLogger(string name, SPFarm parent)
            : base(name, parent)
        {
        }


        public static UPSBrowserLogger Local
        {
            get
            {
                var LogSvc = SPDiagnosticsServiceBase.GetLocal<UPSBrowserLogger>();
                // if the Logging Service is registered, just return it.
                if (LogSvc != null)
                    return LogSvc;

                UPSBrowserLogger svc = null;
                SPSecurity.RunWithElevatedPrivileges(delegate ()
                {
                    // otherwise instantiate and register the new instance, which requires farm administrator privileges
                    svc = new UPSBrowserLogger();
                    //svc.Update();
                });
                return svc;
            }
        }


        public static void Unregister()
        {
            SPFarm.Local.Services
                        .OfType<UPSBrowserLogger>()
                        .ToList()
                        .ForEach(s =>
                        {
                            s.Delete();
                            s.Unprovision();
                            s.Uncache();
                        });
        }


        public static void LogDebug(UPSBrowserLogger.Categories category, string message)
        {
            try
            {
                TraceSeverity severity = TraceSeverity.Verbose;
                SPDiagnosticsCategory _category = Local.Areas[LOG_AREA].Categories[category.ToString()];
                Local.WriteTrace(0, _category, severity, message);
                Debug.WriteLine(message);
            }
            catch
            {   // Don't want to do anything if logging goes wrong, just ignore and continue
            }
        }


        public static void LogInfo(UPSBrowserLogger.Categories category, string message)
        {
            try
            {
                TraceSeverity severity = TraceSeverity.Medium;
                SPDiagnosticsCategory _category = Local.Areas[LOG_AREA].Categories[category.ToString()];
                Local.WriteTrace(0, _category, severity, message);
                Debug.WriteLine(message);
            }
            catch
            {   // Don't want to do anything if logging goes wrong, just ignore and continue
            }
        }

        public static void LogError(UPSBrowserLogger.Categories category, string message)
        {
            try
            {
                SPDiagnosticsCategory _category = Local.Areas[LOG_AREA].Categories[category.ToString()];

                TraceSeverity traceSeverity = TraceSeverity.High;
                Local.WriteTrace(0, _category, traceSeverity, message);

                EventSeverity eventSeverity = EventSeverity.Error;
                Local.WriteEvent(0, _category, eventSeverity, message);

                Debug.WriteLine(message);
            }
            catch
            {   // Don't want to do anything if logging goes wrong, just ignore and continue
            }
        }




        private static string GetCurrentUser()
        {
            SPContext spContext;
            SPWeb spWeb;
            SPUser spUser;
            string currentUser = "";

            try
            {
                spContext = Microsoft.SharePoint.SPContext.Current;
                spWeb = spContext.Web;
                spUser = spWeb.CurrentUser;
                currentUser = spUser.LoginName;
            }
            catch
            {
            };

            return currentUser;
        }

        public static void LogActivity(string user, string action, string result, string additionalInfo = "")
        {
            try
            {
                SPDiagnosticsCategory _category = Local.Areas[LOG_AREA].Categories[UPSBrowserLogger.Categories.ActivityLogging.ToString()];
                string initiator = GetCurrentUser();

                string message = $"{initiator};{user};{action};{result};{additionalInfo}";

                TraceSeverity traceSeverity = TraceSeverity.Medium;
                Local.WriteTrace(0, _category, traceSeverity, message);

                EventSeverity eventSeverity = EventSeverity.Information;
                Local.WriteEvent(0, _category, eventSeverity, message);

                Debug.WriteLine(message);
            }
            catch
            {   // Don't want to do anything if logging goes wrong, just ignore and continue
            }
        }

        protected override IEnumerable<SPDiagnosticsArea> ProvideAreas()
        {
            List<SPDiagnosticsCategory> categories = new List<SPDiagnosticsCategory>
            {
                new SPDiagnosticsCategory(
                                            Categories.General.ToString(),
                                            TraceSeverity.Medium,
                                            EventSeverity.Error
                ),
                new SPDiagnosticsCategory(
                                            Categories.ActivityLogging.ToString(),
                                            TraceSeverity.Verbose,
                                            EventSeverity.Verbose
                ),
                new SPDiagnosticsCategory(
                                            Categories.MainPage.ToString(),
                                            TraceSeverity.Medium,
                                            EventSeverity.Error
                ),
                new SPDiagnosticsCategory(
                                            Categories.UpsUserForm.ToString(),
                                            TraceSeverity.Medium,
                                            EventSeverity.Error
                ),
                new SPDiagnosticsCategory(
                                            Categories.ImportUsersForm.ToString(),
                                            TraceSeverity.Medium,
                                            EventSeverity.Error
                ),
                new SPDiagnosticsCategory(
                                            Categories.UPSUsersDAL.ToString(),
                                            TraceSeverity.Medium,
                                            EventSeverity.Error
                ),
                new SPDiagnosticsCategory(
                                            Categories.FakeUPSUsersDAL.ToString(),
                                            TraceSeverity.Medium,
                                            EventSeverity.Error
                ),
                new SPDiagnosticsCategory(
                                            Categories.WSExternalUsersSource.ToString(),
                                            TraceSeverity.Medium,
                                            EventSeverity.Error
                )
            };

            yield return new SPDiagnosticsArea(
                                                LOG_AREA,
                                                0,
                                                0,
                                                false,
                                                categories);
        }

    }



}

