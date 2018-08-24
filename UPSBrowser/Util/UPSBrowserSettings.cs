using Microsoft.SharePoint;
using Microsoft.SharePoint.Administration;
using Microsoft.SharePoint.Utilities;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kcell.UPSBrowser
{
    // http://www.wictorwilen.se/Post/Six-ways-to-store-settings-in-SharePoint.aspx # Using SPSite property bag

    static class UPSBrowserSettings
    {
        private static SPPropertyBag getSettingsContainer()
        {
            return SPContext.Current.Web.Site.RootWeb.Properties;
        }

        private static void commitChanges()
        {
            SPContext.Current.Web.Site.RootWeb.Properties.Update();
        }

        public static List<string> AllowedUserEmails
        {
            get {
                string emailsString = (string)SPContext.Current.Web.Site.WebApplication.Properties[Constants.propertyBagPropertyName];
                var emails = emailsString.Split(',');
                return emails.ToList<string>();
            }
        }

        public static JObject Settings
        {
            get
            {
                try
                {

                    var container = getSettingsContainer();
                    string jsonString = (string)container[Constants.propertyBagPropertyName];
                    return JObject.Parse(jsonString);
                }
                catch
                {
                    return new JObject();
                }
            }

            set
            {
                UPSBrowserLogger.LogDebug(UPSBrowserLogger.Categories.General, "UPSBrowserSettings Settings property setter invoked");
                string jsonString = value.ToString(Formatting.None);
                UPSBrowserLogger.LogDebug(UPSBrowserLogger.Categories.General, $"jsonString: {jsonString}");
                var container = getSettingsContainer();
                container[Constants.propertyBagPropertyName] = jsonString;
                commitChanges();
                UPSBrowserLogger.LogDebug(UPSBrowserLogger.Categories.General, $"Settings saved");
            }
        }


        public static void setStringProperty(JObject settings, string propertyName, string propertyValue)
        {
            settings[propertyName] = propertyValue;
        }

        public static string getStringProperty(JObject settings, string propertyName)
        {
            string value;
            try
            {
                value = (string)settings[propertyName];
            }
            catch
            {
                value = null;
            };
            return value;
        }

    }


}
