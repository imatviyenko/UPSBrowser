using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Microsoft.SharePoint;
using Microsoft.SharePoint.Administration;
using Microsoft.Office.Server.UserProfiles;
using System.Web;

namespace Kcell.UPSBrowser
{
    class UPSUsersDAL : IUPSUsersDAL
    {
        private UPSBrowserLogger.Categories loggingCategory = UPSBrowserLogger.Categories.UPSUsersDAL;

        private IIdentityProvidersHelper identityProvidersHelper;

        public UPSUsersDAL()
        {
            identityProvidersHelper = new IdentityProvidersHelper();
        }

        private User UserProfileToUser(UserProfile userProfile)
        {
            User user = new Kcell.UPSBrowser.User
            {
                WorkEmail = (string)userProfile[PropertyConstants.WorkEmail].Value,
                AccountName = userProfile.AccountName,
                DisplayName = userProfile.DisplayName,
                FirstName = (string)userProfile[PropertyConstants.FirstName].Value,
                LastName = (string)userProfile[PropertyConstants.LastName].Value,
                Department = (string)userProfile[PropertyConstants.Department].Value,
                JobTitle = (string)userProfile[PropertyConstants.JobTitle].Value,
                WorkPhone = (string)userProfile[PropertyConstants.WorkPhone].Value,
                CellPhone = (string)userProfile[PropertyConstants.CellPhone].Value,
                UserGuid = userProfile[PropertyConstants.UserGuid].Value.ToString()
            };
            return user;
        }

        public User getUserByEmail(string email)
        {
            throw new NotImplementedException();
        }

        

        public User getUserByGuid(string guid)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "getUserByGuid invoked");
            UPSBrowserLogger.LogDebug(loggingCategory, $"guid: {guid}");
            User userToReturn = null;

            try
            {
                SPSecurity.RunWithElevatedPrivileges(delegate ()
                {
                    UPSBrowserLogger.LogDebug(loggingCategory, "Running with elevated privileges");

                    // Save the original HttpContext and set it to null
                    // solution to enable impersonated access to UPS from here: 
                    // https://weblogs.asp.net/sreejukg/access-denied-error-when-retrieving-user-profiles-count-from-sharepoint
                    HttpContext savedHttpContext = HttpContext.Current;
                    HttpContext.Current = null;

                    // Access the User Profile Service
                    try
                    {
                        SPServiceContext serviceContext = SPServiceContext.GetContext(SPServiceApplicationProxyGroup.Default, SPSiteSubscriptionIdentifier.Default);
                        UPSBrowserLogger.LogDebug(loggingCategory, "Reference to SPServiceContext obtained");
                        UserProfileManager userProfileManager = new UserProfileManager(serviceContext);
                        UPSBrowserLogger.LogDebug(loggingCategory, "Reference to UserProfileManager obtained");
                        UserProfile userProfile = userProfileManager.GetUserProfile(new Guid(guid));
                        if (userProfile == null)
                        {
                            UPSBrowserLogger.LogError(loggingCategory, $"User profile with guid {guid} not found in User Profile Service");
                            return; //exit delegate block
                        };

                        UPSBrowserLogger.LogDebug(loggingCategory, $"userProfile.AccountName: {userProfile.AccountName}, userProfile.DisplayName: {userProfile.DisplayName}");

                        userToReturn = UserProfileToUser(userProfile);
                        string outputString = $"Retrieved user properties - Email: {userToReturn.WorkEmail}, Username: {userToReturn.AccountName}, DisplayName: {userToReturn.DisplayName}, Department: {userToReturn.Department}, JobTitle: {userToReturn.JobTitle}";
                        UPSBrowserLogger.LogDebug(loggingCategory, outputString);
                    }
                    catch (System.Exception e)
                    {
                        UPSBrowserLogger.LogError(loggingCategory, e.Message);
                    }
                    finally
                    {
                        // Restore HttpContext
                        HttpContext.Current = savedHttpContext;
                    };

                });
            }
            catch (System.Exception e)
            {
                UPSBrowserLogger.LogError(loggingCategory, $"Error while trying to elevate privileges: {e.Message}");
            };

            return userToReturn;
        }

        public List<User> getUsersBySearchString(string searchString)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "getUsersBySearchString invoked");
            UPSBrowserLogger.LogDebug(loggingCategory, $"searchString: {searchString}");

            List<User> usersToReturn = new List<User>();

            if (searchString.Length < 3)
            {
                return null;
            }


            try
            {
                SPSecurity.RunWithElevatedPrivileges(delegate ()
                {
                    UPSBrowserLogger.LogDebug(loggingCategory, "Running with elevated privileges");

                    // Save the original HttpContext and set it to null
                    // solution to enable impersonated access to UPS from here: 
                    // https://weblogs.asp.net/sreejukg/access-denied-error-when-retrieving-user-profiles-count-from-sharepoint
                    HttpContext savedHttpContext = HttpContext.Current;
                    HttpContext.Current = null;

                    // Access the User Profile Service
                    try
                    {
                        SPServiceContext serviceContext = SPServiceContext.GetContext(SPServiceApplicationProxyGroup.Default, SPSiteSubscriptionIdentifier.Default);
                        UPSBrowserLogger.LogDebug(loggingCategory, "Reference to SPServiceContext obtained");
                        UserProfileManager userProfileManager = new UserProfileManager(serviceContext);
                        UPSBrowserLogger.LogDebug(loggingCategory, "Reference to UserProfileManager obtained");
                        ProfileBase[] searchResults = userProfileManager.Search(searchString);

                        foreach (ProfileBase profile in searchResults)
                        {
                            UserProfile userProfile = (UserProfile)profile;
                            UPSBrowserLogger.LogDebug(loggingCategory, $"Profile found - AccountName: {userProfile.AccountName}, DisplayName: {userProfile.DisplayName}");

                            User user = UserProfileToUser(userProfile);
                            string outputString = $"Retrieved user properties - Email: {user.WorkEmail}, Username: {user.AccountName}, DisplayName: {user.DisplayName}, Department: {user.Department}, JobTitle: {user.JobTitle}";
                            UPSBrowserLogger.LogDebug(loggingCategory, outputString);
                            usersToReturn.Add(user);
                        };

                    }
                    catch (System.Exception e)
                    {
                        UPSBrowserLogger.LogError(loggingCategory, e.Message);
                    }
                    finally
                    {
                        // Restore HttpContext
                        HttpContext.Current = savedHttpContext;
                    };

                });
            }
            catch (System.Exception e)
            {
                UPSBrowserLogger.LogError(loggingCategory, $"Error while trying to elevate privileges: {e.Message}");
            };


            UPSBrowserLogger.LogDebug(loggingCategory, $"usersToReturn.Count: {usersToReturn.Count}");
            return usersToReturn;
        }

        public User updateUser(User updatedUser)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "updateUser invoked");
            UPSBrowserLogger.LogDebug(loggingCategory, $"newUser.AccountName: {updatedUser.AccountName}, newUser.WorkEmail: {updatedUser.WorkEmail}, newUser.DisplayName: {updatedUser.DisplayName}");

            User userToReturn = null;
            string accountNameForLogger = updatedUser.AccountName;

            try
            {
                SPSecurity.RunWithElevatedPrivileges(delegate ()
                {
                    UPSBrowserLogger.LogDebug(loggingCategory, "Running with elevated privileges");
                    
                    // Save the original HttpContext and set it to null
                    // solution to enable impersonated access to UPS from here: 
                    // https://weblogs.asp.net/sreejukg/access-denied-error-when-retrieving-user-profiles-count-from-sharepoint
                    HttpContext savedHttpContext = HttpContext.Current;
                    HttpContext.Current = null;

                    // Access the User Profile Service
                    try
                    {
                        SPServiceContext serviceContext = SPServiceContext.GetContext(SPServiceApplicationProxyGroup.Default, SPSiteSubscriptionIdentifier.Default);
                        UPSBrowserLogger.LogDebug(loggingCategory, "Reference to SPServiceContext obtained");
                        UserProfileManager userProfileManager = new UserProfileManager(serviceContext);
                        UPSBrowserLogger.LogDebug(loggingCategory, "Reference to UserProfileManager obtained");

                        UserProfile userProfile = userProfileManager.GetUserProfile(new Guid(updatedUser.UserGuid));
                        if (userProfile == null)
                        {
                            UPSBrowserLogger.LogError(loggingCategory, $"User profile with guid {updatedUser.UserGuid} not found in User Profile Service");
                            ActivityLogger.LogActivity(accountNameForLogger, LogActivityActionEnum.Update, LogActivityResultEnum.Error);
                            return; //exit delegate block
                        };

                        UPSBrowserLogger.LogDebug(loggingCategory, $"userProfile.AccountName: {userProfile.AccountName}, userProfile.DisplayName: {userProfile.DisplayName}");
                        accountNameForLogger = userProfile.AccountName;

                        //userProfile[PropertyConstants.WorkEmail].Value = updatedUser.WorkEmail;
                        userProfile[PropertyConstants.FirstName].Value = updatedUser.FirstName;
                        userProfile[PropertyConstants.LastName].Value = updatedUser.LastName;
                        userProfile[PropertyConstants.Department].Value = updatedUser.Department;
                        userProfile[PropertyConstants.JobTitle].Value = updatedUser.JobTitle;
                        userProfile[PropertyConstants.Title].Value = updatedUser.JobTitle; // Title is synced from UPS to User Information List!
                        userProfile[PropertyConstants.WorkPhone].Value = updatedUser.WorkPhone;
                        userProfile[PropertyConstants.CellPhone].Value = updatedUser.CellPhone;
                        userProfile.Commit();

                        UPSBrowserLogger.LogDebug(loggingCategory, $"userProfile.AccountName: {userProfile.AccountName}, userProfile.DisplayName: {userProfile.DisplayName}, userProfile.AccountName: {userProfile[PropertyConstants.UserGuid]}");
                        userToReturn = UserProfileToUser(userProfile);

                        string outputString = $"Retrieved user properties - Email: {userToReturn.WorkEmail}, AccountName: {userToReturn.AccountName}, DisplayName: {userToReturn.DisplayName}, UserGuid: {userToReturn.UserGuid}, Department: {userToReturn.Department}, JobTitle: {userToReturn.JobTitle}";
                        UPSBrowserLogger.LogDebug(loggingCategory, outputString);
                        UPSBrowserLogger.LogDebug(loggingCategory, $"User profile with guid {userToReturn.UserGuid} and AccountName {userToReturn.AccountName} updated successfully");
                    }
                    catch (System.Exception e)
                    {
                        UPSBrowserLogger.LogError(loggingCategory, e.Message);
                        ActivityLogger.LogActivity(accountNameForLogger, LogActivityActionEnum.Update, LogActivityResultEnum.Error);
                    }
                    finally
                    {
                        // Restore HttpContext
                        HttpContext.Current = savedHttpContext;
                    };

                });
            }
            catch (System.Exception e)
            {
                UPSBrowserLogger.LogError(loggingCategory, $"Error while trying to elevate privileges: {e.Message}");
                ActivityLogger.LogActivity(accountNameForLogger, LogActivityActionEnum.Update, LogActivityResultEnum.Error);
            };

            if (userToReturn != null)
            {
                ActivityLogger.LogActivity(accountNameForLogger, LogActivityActionEnum.Update, LogActivityResultEnum.Success);
            };

            return userToReturn;
        }

        public User createUser(User newUser, string identityProviderName)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "createUser invoked");
            UPSBrowserLogger.LogDebug(loggingCategory, $"newUser.AccountName: {newUser.AccountName}, newUser.WorkEmail: {newUser.WorkEmail}, newUser.DisplayName: {newUser.DisplayName}");
            UPSBrowserLogger.LogDebug(loggingCategory, $"identityProviderName: {identityProviderName}");

            User userToReturn = null;
            string accountNameForLogger = newUser.WorkEmail;

            try
            {
                SPSecurity.RunWithElevatedPrivileges(delegate ()
                {
                    UPSBrowserLogger.LogDebug(loggingCategory, "Running with elevated privileges");

                    // Save the original HttpContext and set it to null
                    // solution to enable impersonated access to UPS from here: 
                    // https://weblogs.asp.net/sreejukg/access-denied-error-when-retrieving-user-profiles-count-from-sharepoint
                    HttpContext savedHttpContext = HttpContext.Current;
                    HttpContext.Current = null;

                    // Access the User Profile Service
                    try
                    {
                        SPServiceContext serviceContext = SPServiceContext.GetContext(SPServiceApplicationProxyGroup.Default, SPSiteSubscriptionIdentifier.Default);
                        UPSBrowserLogger.LogDebug(loggingCategory, "Reference to SPServiceContext obtained");
                        UserProfileManager userProfileManager = new UserProfileManager(serviceContext);
                        UPSBrowserLogger.LogDebug(loggingCategory, "Reference to UserProfileManager obtained");

                        string accountName = identityProvidersHelper.getAccountNameForEmail(newUser.WorkEmail, identityProviderName);
                        accountNameForLogger = accountName;

                        UserProfile userProfile = userProfileManager.CreateUserProfile(accountName, newUser.DisplayName);
                        if (userProfile == null)
                        {
                            UPSBrowserLogger.LogError(loggingCategory, $"Failed to create user profile with AccountName {accountName}");
                            ActivityLogger.LogActivity(accountNameForLogger, LogActivityActionEnum.Create, LogActivityResultEnum.Error);
                            return; //exit delegate block
                        };

                        userProfile[PropertyConstants.WorkEmail].Value = newUser.WorkEmail;
                        userProfile[PropertyConstants.FirstName].Value = newUser.FirstName;
                        userProfile[PropertyConstants.LastName].Value = newUser.LastName;
                        userProfile[PropertyConstants.Department].Value = newUser.Department;
                        userProfile[PropertyConstants.JobTitle].Value = newUser.JobTitle;
                        userProfile[PropertyConstants.Title].Value = newUser.JobTitle; // Title is synced from UPS to User Information List!
                        userProfile[PropertyConstants.WorkPhone].Value = newUser.WorkPhone;
                        userProfile[PropertyConstants.CellPhone].Value = newUser.CellPhone;
                        userProfile.Commit();



                        UPSBrowserLogger.LogDebug(loggingCategory, $"userProfile.AccountName: {userProfile.AccountName}, userProfile.DisplayName: {userProfile.DisplayName}, userProfile.AccountName: {userProfile[PropertyConstants.UserGuid]}");

                        userToReturn = UserProfileToUser(userProfile);

                        string outputString = $"Retrieved user properties - Email: {userToReturn.WorkEmail}, AccountName: {userToReturn.AccountName}, DisplayName: {userToReturn.DisplayName}, UserGuid: {userToReturn.UserGuid}, Department: {userToReturn.Department}, JobTitle: {userToReturn.JobTitle}";
                        UPSBrowserLogger.LogDebug(loggingCategory, outputString);

                    }
                    catch (System.Exception e)
                    {
                        UPSBrowserLogger.LogError(loggingCategory, e.Message);
                        ActivityLogger.LogActivity(accountNameForLogger, LogActivityActionEnum.Create, LogActivityResultEnum.Error);
                    }
                    finally
                    {
                        // Restore HttpContext
                        HttpContext.Current = savedHttpContext;
                    };
                });
            }
            catch (System.Exception e)
            {
                UPSBrowserLogger.LogError(loggingCategory, $"Error while trying to elevate privileges: {e.Message}");
                ActivityLogger.LogActivity(accountNameForLogger, LogActivityActionEnum.Create, LogActivityResultEnum.Error);
            };


            if (userToReturn != null)
            {
                ActivityLogger.LogActivity(accountNameForLogger, LogActivityActionEnum.Create, LogActivityResultEnum.Success);
            };

            return userToReturn;
        }

        public bool deleteUserByGuid(string guid)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "deleteUserByGuid invoked");
            UPSBrowserLogger.LogDebug(loggingCategory, $"guid: {guid}");

            bool result = false;
            string accountNameForLogger = guid;

            try
            {
                SPSecurity.RunWithElevatedPrivileges(delegate ()
                {
                    UPSBrowserLogger.LogDebug(loggingCategory, "Running with elevated privileges");

                    // Save the original HttpContext and set it to null
                    // solution to enable impersonated access to UPS from here: 
                    // https://weblogs.asp.net/sreejukg/access-denied-error-when-retrieving-user-profiles-count-from-sharepoint
                    HttpContext savedHttpContext = HttpContext.Current;
                    HttpContext.Current = null;


                    // Access the User Profile Service
                    try
                    {
                        SPServiceContext serviceContext = SPServiceContext.GetContext(SPServiceApplicationProxyGroup.Default, SPSiteSubscriptionIdentifier.Default);
                        UPSBrowserLogger.LogDebug(loggingCategory, "Reference to SPServiceContext obtained");
                        UserProfileManager userProfileManager = new UserProfileManager(serviceContext);
                        UPSBrowserLogger.LogDebug(loggingCategory, "Reference to UserProfileManager obtained");

                        UserProfile userProfile = userProfileManager.GetUserProfile(new Guid(guid));
                        if (userProfile == null)
                        {
                            UPSBrowserLogger.LogError(loggingCategory, $"User profile with guid {guid} not found in User Profile Service");
                            ActivityLogger.LogActivity(accountNameForLogger, LogActivityActionEnum.Delete, LogActivityResultEnum.Error);
                            return; //exit delegate block
                        };

                        UPSBrowserLogger.LogDebug(loggingCategory, $"userProfile.AccountName: {userProfile.AccountName}, userProfile.DisplayName: {userProfile.DisplayName}");
                        accountNameForLogger = userProfile.AccountName;

                        userProfileManager.RemoveUserProfile(new Guid(guid));
                        string outputString = $"User profile with guid {guid} deleted";
                        UPSBrowserLogger.LogDebug(loggingCategory, outputString);
                        result = true;
                    }
                    catch (System.Exception e)
                    {
                        UPSBrowserLogger.LogError(loggingCategory, e.Message);
                        ActivityLogger.LogActivity(accountNameForLogger, LogActivityActionEnum.Delete, LogActivityResultEnum.Error);
                    }
                    finally
                    {
                        // Restore HttpContext
                        HttpContext.Current = savedHttpContext;
                    };

                });
            }
            catch (System.Exception e)
            {
                UPSBrowserLogger.LogError(loggingCategory, $"Error while trying to elevate privileges: {e.Message}");
                ActivityLogger.LogActivity(accountNameForLogger, LogActivityActionEnum.Delete, LogActivityResultEnum.Error);
            };

            if (result)
            {
                ActivityLogger.LogActivity(accountNameForLogger, LogActivityActionEnum.Delete, LogActivityResultEnum.Success);
            };

            return result;
        }

    }
}
