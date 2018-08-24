using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kcell.UPSBrowser
{
    sealed class FakeUPSUsersDAL : IUPSUsersDAL
    {
        private UPSBrowserLogger.Categories loggingCategory = UPSBrowserLogger.Categories.FakeUPSUsersDAL;

        // Singleton pattern #2 from here: http://csharpindepth.com/Articles/General/Singleton.aspx#exceptions
        private static IUPSUsersDAL instance = null;
        private static readonly object padlock = new object();

        private FakeUPSUsersDAL() //private constructor
        {
            GenerateFakeUsers(15);
        }

        public static IUPSUsersDAL getInstance() 
        {
            lock (padlock)
            {
                if (instance == null)
                {
                    instance = new FakeUPSUsersDAL();
                }
                return instance;
            }
        }



        

        private List<User> _users = new List<User>();

        private void GenerateFakeUsers(int userCount)
        {
            string[] jobTitles = { "Specialst", "Supervisor", "Manager" };
            string[] departments = { "Technologies Department", "Customer Relations Department", "Marketing Department", "Sales Department", "CEO Department" };
            Random rnd = new Random();
            

            for (int i = 1; i <= userCount; i++)
            {
                string jobTitle = jobTitles[rnd.Next(jobTitles.Length - 1)];
                string department = departments[rnd.Next(departments.Length - 1)];

                User user = new User
                {
                    UserGuid = Guid.NewGuid().ToString(),
                    AccountName = $"i:05.t|trustname|test.user{i.ToString()}@company.com",
                    DisplayName = $"Test user{i.ToString()}",
                    WorkEmail = $"test.user{i.ToString()}@company.com",
                    JobTitle = jobTitle,
                    Department = department
                };
                _users.Add(user);
            }
        }


        public User getUserByEmail(string email)
        {
            throw new NotImplementedException();
        }

        public User getUserByGuid(string guid)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "getUserByGuid invoked");
            UPSBrowserLogger.LogDebug(loggingCategory, $"guid: {guid}");
            User userToReturn = _users.SingleOrDefault(user => user.UserGuid == guid);
            if (userToReturn == null)
            {
                UPSBrowserLogger.LogError(loggingCategory, $"User profile not found");
                return null;
            }

            UPSBrowserLogger.LogDebug(loggingCategory, $"userToReturn.AccountName: {userToReturn.AccountName}, userToReturn.WorkEmail: {userToReturn.WorkEmail}");
            return userToReturn;
        }


        public User createUser(User newUser, string identityProviderName)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "createUser invoked");
            UPSBrowserLogger.LogDebug(loggingCategory, $"newUser.UserGuid: {newUser.UserGuid}");
            newUser.UserGuid = Guid.NewGuid().ToString();
            _users.Add(newUser);

            // log completed activity
            //UPSBrowserLogger.LogActivity(newUser.Username, UPSBrowserLogger.LogActivityActionEnum.Create, UPSBrowserLogger.LogActivityResultEnum.Success);
            ActivityLogger.LogActivity(newUser.AccountName, LogActivityActionEnum.Create, LogActivityResultEnum.Success);
            return newUser;
        }


        public User updateUser(User updatedUser)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "updateUser invoked");
            UPSBrowserLogger.LogDebug(loggingCategory, $"updatedUser.UserGuid: {updatedUser.UserGuid}");

            User userToUpdate = _users.SingleOrDefault(user => user.UserGuid == updatedUser.UserGuid);
            if (userToUpdate == null)
            {
                UPSBrowserLogger.LogError(loggingCategory, $"User profile not found");
                //UPSBrowserLogger.LogActivity(userToUpdate.Username, UPSBrowserLogger.LogActivityActionEnum.Update, UPSBrowserLogger.LogActivityResultEnum.Error);
                ActivityLogger.LogActivity(userToUpdate.AccountName, LogActivityActionEnum.Update, LogActivityResultEnum.Error);
                return null;
            }

            //_users.Where()
            UPSBrowserLogger.LogError(loggingCategory, $"User profile found, updating properties");
            userToUpdate.WorkEmail = updatedUser.WorkEmail;
            userToUpdate.AccountName = updatedUser.AccountName;
            userToUpdate.DisplayName = updatedUser.DisplayName;
            userToUpdate.JobTitle = updatedUser.JobTitle;
            userToUpdate.Department = updatedUser.Department;

            // log completed activity
            //UPSBrowserLogger.LogActivity(userToUpdate.Username, UPSBrowserLogger.LogActivityActionEnum.Update, UPSBrowserLogger.LogActivityResultEnum.Success);
            ActivityLogger.LogActivity(userToUpdate.AccountName, LogActivityActionEnum.Update, LogActivityResultEnum.Success);

            return userToUpdate;
        }

        public bool deleteUserByGuid(string guid)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "deleteUserByGuid invoked");
            UPSBrowserLogger.LogDebug(loggingCategory, $"guid: {guid}");
            User userToDelete = _users.SingleOrDefault(user => user.UserGuid == guid);
            if (userToDelete == null)
            {
                UPSBrowserLogger.LogError(loggingCategory, $"User profile not found");
                //UPSBrowserLogger.LogActivity(userToDelete.Username, UPSBrowserLogger.LogActivityActionEnum.Delete, UPSBrowserLogger.LogActivityResultEnum.Error);
                ActivityLogger.LogActivity(userToDelete.AccountName, LogActivityActionEnum.Delete, LogActivityResultEnum.Error);
                return false;
            }

            UPSBrowserLogger.LogDebug(loggingCategory, $"userToDelete.AccountName: {userToDelete.AccountName}, userToDelete.WorkEmail: {userToDelete.WorkEmail}");
            _users.Remove(userToDelete);
            UPSBrowserLogger.LogDebug(loggingCategory, "User profile deleted");
            //UPSBrowserLogger.LogActivity(userToDelete.Username, UPSBrowserLogger.LogActivityActionEnum.Delete, UPSBrowserLogger.LogActivityResultEnum.Success);
            ActivityLogger.LogActivity(userToDelete.AccountName, LogActivityActionEnum.Delete, LogActivityResultEnum.Success);

            return true;
        }

        public List<User> getUsersBySearchString(string searchString)
        {
            UPSBrowserLogger.LogDebug(loggingCategory, "getUsersBySearchString invoked");
            UPSBrowserLogger.LogDebug(loggingCategory, $"searchString: {searchString}");
            UPSBrowserLogger.LogDebug(loggingCategory, $"_users.Count: {_users.Count}");

            if (searchString.Length < 3)
            {
                return null;
            }

            List<User> usersToReturn =_users.Where((user) => String.Concat(user.WorkEmail, "|", user.DisplayName).ToLower().Contains(searchString.ToLower())).ToList<User>();
            UPSBrowserLogger.LogDebug(loggingCategory, $"usersToReturn.Count: {usersToReturn.Count}");
            return usersToReturn;
        }

    }
}
