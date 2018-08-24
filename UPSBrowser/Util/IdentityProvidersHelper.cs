using Microsoft.SharePoint;
using Microsoft.SharePoint.Administration;
using Microsoft.SharePoint.Administration.Claims;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kcell.UPSBrowser
{
    class IdentityProvidersHelper : IIdentityProvidersHelper
    {
        private UPSBrowserLogger.Categories loggingCategory = UPSBrowserLogger.Categories.General;

        public string getAccountNameForEmail(string email, string indentityProviderName)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "getIdentityProviders invoked");
            UPSBrowserLogger.LogDebug(loggingCategory, $"email: {email}, indentityProviderName: {indentityProviderName}");
            string originalIssuer = SPOriginalIssuers.Format(SPOriginalIssuerType.TrustedProvider, indentityProviderName);
            SPClaimProviderManager mgr = SPClaimProviderManager.Local;
            SPClaim claim = new SPClaim("http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress", email, System.Security.Claims.ClaimValueTypes.String, originalIssuer);
            string accountName = mgr.EncodeClaim(claim);
            return accountName;
        }

        public List<IdentityProvider> getIdentityProviders()
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "getIdentityProviders invoked");
            List<IdentityProvider> identityProvidersToReturn = new List<IdentityProvider>();

            try
            {
                SPSecurity.RunWithElevatedPrivileges(delegate ()
                {
                    UPSBrowserLogger.LogDebug(loggingCategory, "Running with elevated privileges");

                    try
                    {
                        SPContext spContext = Microsoft.SharePoint.SPContext.Current;
                        SPWebApplication webApp = spContext.Site.WebApplication;
                        SPUrlZone spUrlZone = spContext.Site.Zone;
                        SPIisSettings spIisSettings = webApp.GetIisSettingsWithFallback(spUrlZone);
                        SPSecurityTokenServiceManager sptMgr = SPSecurityTokenServiceManager.Local;

                        foreach (SPAuthenticationProvider prov in spIisSettings.ClaimsAuthenticationProviders)
                        {
                            if (prov.GetType() == typeof(Microsoft.SharePoint.Administration.SPTrustedAuthenticationProvider))
                            {
                                var lp =
                                    from SPTrustedLoginProvider spt in
                                    sptMgr.TrustedLoginProviders
                                    where spt.DisplayName == prov.DisplayName
                                    select spt;

                                if ((lp != null) && (lp.Count() > 0))
                                {
                                    SPTrustedLoginProvider loginProv = lp.First();
                                    identityProvidersToReturn.Add(new IdentityProvider
                                    {
                                        Name = loginProv.Name,
                                        DisplayName = loginProv.DisplayName,
                                        Description = loginProv.Description,
                                    });
                                }
                            }
                        }

                    }
                    catch (Exception e)
                    {
                        UPSBrowserLogger.LogError(loggingCategory, e.Message);
                    };
                });
            }
            catch (System.Exception e)
            {
                UPSBrowserLogger.LogError(loggingCategory, $"Error while trying to elevate privileges: {e.Message}");
            };

            return identityProvidersToReturn;
        }

    }
}
