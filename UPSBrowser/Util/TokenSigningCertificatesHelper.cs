using Microsoft.SharePoint;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography.X509Certificates;
using System.Security.Cryptography;

namespace Kcell.UPSBrowser
{
    class TokenSigningCertificatesHelper : ITokenSigningCertificatesHelper
    {
        private UPSBrowserLogger.Categories loggingCategory = UPSBrowserLogger.Categories.General;
        public List<TokenSigningCertificate> getTokenSigningCertificates()
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "TokenSigningCertificatesHelper.getTokenSigningCertificates invoked");
            List<TokenSigningCertificate> certsToReturn = new List<TokenSigningCertificate>();

            try
            {
                SPSecurity.RunWithElevatedPrivileges(delegate ()
                {
                    UPSBrowserLogger.LogDebug(loggingCategory, "Running with elevated privileges");

                    try
                    {
                        X509Store store = new X509Store(StoreName.My, StoreLocation.LocalMachine);
                        store.Open(OpenFlags.OpenExistingOnly | OpenFlags.ReadOnly);
                        UPSBrowserLogger.LogDebug(loggingCategory, "LocalMachine cert store open");

                        SPContext spContext = Microsoft.SharePoint.SPContext.Current;
                        string siteHostName = (new Uri(spContext.Site.Url)).Host.ToLower();

                        UPSBrowserLogger.LogDebug(loggingCategory, $"Current SP site URL host part: {siteHostName}");

                        foreach (X509Certificate2 cert in store.Certificates)
                        {
                            UPSBrowserLogger.LogDebug(loggingCategory, $"cert.FriendlyName: {cert.FriendlyName}, cert.HasPrivateKey: {cert.HasPrivateKey}, cert.NotAfter: {cert.NotAfter}");
                            if (cert.HasPrivateKey && (cert.NotAfter > DateTime.Now))
                            {
                                TokenSigningCertificate certToAdd = new TokenSigningCertificate
                                {
                                    friendlyName = cert.FriendlyName,
                                    subject = cert.Subject,
                                    thumbprint = cert.Thumbprint,
                                    rank = cert.Subject.ToLower().Equals($"cn={siteHostName}") ? 1 : 0,
                                    cert = cert
                                };
                                certsToReturn.Add(certToAdd);
                                UPSBrowserLogger.LogDebug(loggingCategory, $"Cert added - friendly name: {certToAdd.friendlyName}; subject: {certToAdd.subject}, rank: {certToAdd.rank}");
                            };
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

            return certsToReturn.OrderByDescending( cert=>cert.rank).ToList();
        }
    }
}
