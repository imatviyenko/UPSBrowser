    using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using Newtonsoft.Json;

namespace Kcell.UPSBrowser
{
    class WSExternalUsersSource : IExternalUsersSource
    {
        private UPSBrowserLogger.Categories loggingCategory = UPSBrowserLogger.Categories.WSExternalUsersSource;

        private string wsBaseUrl { get; set; }
        private TokenSigningCertificate tokenSigningCert { get; set; }
        public WSExternalUsersSource()
        {
        }
        

        private WebClient getWebClient()
        {
            return new WebClient();
        }

        public bool Init(string wsBaseUrl, TokenSigningCertificate tokenSigningCert)
        {
            this.wsBaseUrl = wsBaseUrl;
            this.tokenSigningCert = tokenSigningCert;
            return true;
        }

        public List<User> getAllUsers()
        {
            throw new NotImplementedException();
        }

        public List<User> getUsersBySearchString(string searchString)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "WSExternalUsersSource.getUsersBySearchString invoked");
            UPSBrowserLogger.LogDebug(loggingCategory, $"searchString: {searchString}");

            if (string.IsNullOrEmpty(searchString) || searchString.Length < Constants.searchStringMingLength)
            {
                return null;
            };

            string path = $"searchadusers";
            string queryParameters = $"searchstring={searchString}";
            string jsonString = callJsonWebService(path, false, queryParameters, null);
            if (string.IsNullOrEmpty(jsonString))
            {
                return null;
            };


            List<User> usersToReturn  = JsonConvert.DeserializeObject<List<User>>(jsonString);
            return usersToReturn;
        }

        public List<User> getUsersByEmails(List<string> emails)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "WSExternalUsersSource.getUsersByEmails invoked");

            string jsonString = JsonConvert.SerializeObject(emails);

            string path = $"getusersbyemails";
            string body = jsonString;
            string jsonResult = callJsonWebService(path, true, null, body);
            if (string.IsNullOrEmpty(jsonResult)) {
                return null;
            };

            List<User> usersToReturn = JsonConvert.DeserializeObject<List<User>>(jsonResult);
            return usersToReturn;
        }


        private string callJsonWebService(string path, bool isPostRequest, string queryParameters, string body)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "WSExternalUsersSource.callWebService invoked");
            UPSBrowserLogger.LogDebug(loggingCategory, $"path: {path}");
            UPSBrowserLogger.LogDebug(loggingCategory, $"isPostRequest: {isPostRequest}");
            UPSBrowserLogger.LogDebug(loggingCategory, $"queryParameters: {queryParameters}");
            UPSBrowserLogger.LogDebug(loggingCategory, $"body: {body}");

            if (string.IsNullOrEmpty(wsBaseUrl) || (tokenSigningCert == null))
            {
                string message = "Call Init method to set configuration parameters before calling getUsersBySearchString";
                UPSBrowserLogger.LogError(loggingCategory, message);
                return null;
            };


            string jsonString = null;
            try
            {
                string wsUrl = $"{wsBaseUrl}/{path}";
                wsUrl = string.IsNullOrEmpty(queryParameters) ? $"{wsUrl}": $"{wsUrl}?{queryParameters}";
                WebClient webClient = getWebClient();

                // Generating jwt token using the cert selected on the "Settings" tab
                UPSBrowserLogger.LogDebug(loggingCategory, $"TokenSigningCert.subject: {tokenSigningCert.subject}; TokenSigningCert.friendlyName: {tokenSigningCert.friendlyName}");
                ITokenHelper tokenHelper = new TokenHelper();
                string tokenString = tokenHelper.getTokenString(tokenSigningCert);
                if (string.IsNullOrEmpty(tokenString))
                {
                    string message = "TokenHelper returned null token, external web service call will not be called";
                    UPSBrowserLogger.LogError(loggingCategory, message);
                    return null;
                }

                webClient.Headers.Add("Authorization", $"Bearer {tokenString}");
                webClient.Headers.Add("Content-Type", "application/json; charset=utf-8");
                if (isPostRequest) {
                    jsonString = webClient.UploadString(wsUrl, body);
                } else {
                    jsonString = webClient.DownloadString(wsUrl);
                }
                
                UPSBrowserLogger.LogDebug(loggingCategory, $"jsonString: {jsonString}");
            }
            catch (Exception e)
            {
                string message = $"Error getting data from external web service: {e.Message}";
                UPSBrowserLogger.LogError(loggingCategory, message);
                throw e;
            };

            return jsonString;
        }

    }
}
