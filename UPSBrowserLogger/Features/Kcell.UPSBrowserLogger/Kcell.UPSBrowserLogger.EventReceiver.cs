using System;
using System.Runtime.InteropServices;
using System.Security.Permissions;
using Microsoft.SharePoint;

namespace Kcell.UPSBrowser
{
    /// <summary>
    /// This class handles events raised during feature activation, deactivation, installation, uninstallation, and upgrade.
    /// </summary>
    /// <remarks>
    /// The GUID attached to this class may be used during packaging and should not be modified.
    /// </remarks>

    [Guid("7b119a59-b3ee-4983-8a49-ffd5f5401adc")]
    public class UPSBrowserLoggerEventReceiver : SPFeatureReceiver
    {
        // Uncomment the method below to handle the event raised after a feature has been activated.
        public override void FeatureActivated(SPFeatureReceiverProperties properties)
        {
            var service = UPSBrowserLogger.Local;
            if (service != null)
            {
                service.Update();
            }
        }


        // Uncomment the method below to handle the event raised before a feature is deactivated.
        public override void FeatureDeactivating(SPFeatureReceiverProperties properties)
        {
            var service = UPSBrowserLogger.Local;
            if (service != null)
            {
                service.Delete();
            }
        }


        // Uncomment the method below to handle the event raised after a feature has been installed.

        //public override void FeatureInstalled(SPFeatureReceiverProperties properties)
        //{
        //}


        // Uncomment the method below to handle the event raised before a feature is uninstalled.

        //public override void FeatureUninstalling(SPFeatureReceiverProperties properties)
        //{
        //}

        // Uncomment the method below to handle the event raised when a feature is upgrading.

        //public override void FeatureUpgrading(SPFeatureReceiverProperties properties, string upgradeActionName, System.Collections.Generic.IDictionary<string, string> parameters)
        //{
        //}
    }
}
