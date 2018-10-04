using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Security.Cryptography;
using Microsoft.SharePoint;

using Jose;




namespace Kcell.UPSBrowser
{
    class TokenHelper : ITokenHelper
    {
        private UPSBrowserLogger.Categories loggingCategory = UPSBrowserLogger.Categories.General;
        public string getTokenString(TokenSigningCertificate signingCertificate)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "TokenHelper.getTokenString invoked");


            // In .NET 4.5 which is the target framework version, DateTimeOffset does not have the ToUnixTimeSeconds method which was only introduced in .NET 4.6
            var dateNowUtc = DateTime.UtcNow;
            var epoch = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);
            var unixDateTime = (dateNowUtc - epoch).TotalSeconds + (Constants.jwtTokenLifetimeInMinutes * 60);


            var payload = new Dictionary<string, object>()
            {
                { "sub", signingCertificate.subject},
                { "friendlyName", signingCertificate.friendlyName},
                { "iss", signingCertificate.subject },
                { "aud", Constants.jwtTokenAudience },
                //{ "exp", DateTimeOffset.UtcNow.AddMinutes(Constants.jwtTokenLifetimeInMinutes).ToUnixTimeSeconds() }
                { "exp", unixDateTime }
            };
            string token = null;


            SPSecurity.RunWithElevatedPrivileges(delegate ()
            {
                UPSBrowserLogger.LogDebug(loggingCategory, "Running with elevated privileges");

                // If you get "Keyset does not exist" exception at this stage, make sure the the SP web app pool account has access to the private key of the selected cert
                UPSBrowserLogger.LogDebug(loggingCategory, "Trying to get the cert's private key...");
                var rsaCryptoServiceProvider = signingCertificate.cert.PrivateKey as RSACryptoServiceProvider;

                
                try
                {
                    UPSBrowserLogger.LogDebug(loggingCategory, "Trying to generate a JWT token string using the private key...");
                    token = Jose.JWT.Encode(payload, rsaCryptoServiceProvider, JwsAlgorithm.RS256);
                }
                catch (System.Security.Cryptography.CryptographicException cryptoException)
                {
                    UPSBrowserLogger.LogDebug(loggingCategory, "System.Security.Cryptography.CryptographicException catched");

                    // Look for "Invalid algorithm specified" exception - 
                    UPSBrowserLogger.LogInfo(loggingCategory, $"cryptoException.Message: {cryptoException.Message}");

                    var privateKey = signingCertificate.cert.PrivateKey as RSACryptoServiceProvider;
                    bool privateKeyIsExportable = privateKey.CspKeyContainerInfo.Exportable;

                    if (privateKeyIsExportable)
                    {
                        UPSBrowserLogger.LogDebug(loggingCategory, $"Recreating RsaCryptoServiceProvider using the same cert with MS Enhanced CSP to enable SHA256");

                        // Re-create RsaCryptoServiceProvider using the same cert with MS Enhanced CSP to enable SHA256.
                        // This will only work if the private key of the cert is marked as exportable!
                        // The new RsaCryptoServiceProvider is created by exporting the original cert private key 
                        // and re-importing it again, and the export operation will throw the exception if the original
                        // cert is not marked as exportable: "System.Security.Cryptography.CryptographicException: Key not valid for use in specified state."
                        RSACryptoServiceProvider rsaCryptoServiceProvider_MSEnchancedCSP = new RSACryptoServiceProvider();
                        rsaCryptoServiceProvider_MSEnchancedCSP.ImportParameters(privateKey.ExportParameters(true));

                        UPSBrowserLogger.LogDebug(loggingCategory, "Trying to generate a JWT token string again using the reimported private key...");
                        token = Jose.JWT.Encode(payload, rsaCryptoServiceProvider_MSEnchancedCSP, JwsAlgorithm.RS256);
                    }
                    else
                    {
                        UPSBrowserLogger.LogError(loggingCategory, $"Cannot recreate RsaCryptoServiceProvider with MS Enhanced CSP, the original cert private key is not exportable");
                        token = null;
                    }
                };
            });



            UPSBrowserLogger.LogDebug(loggingCategory, $"token: {token}");
            return token;
        }
    }
}
