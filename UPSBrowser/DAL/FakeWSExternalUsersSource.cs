using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kcell.UPSBrowser
{
    class FakeWSExternalUsersSource : IExternalUsersSource
    {
        private UPSBrowserLogger.Categories loggingCategory = UPSBrowserLogger.Categories.WSExternalUsersSource;

        // Singleton pattern #2 from here: http://csharpindepth.com/Articles/General/Singleton.aspx#exceptions
        private static IExternalUsersSource instance = null;
        private static readonly object padlock = new object();

        private FakeWSExternalUsersSource() //private constructor
        {
            GenerateFakeUsers(10);
        }



        public static IExternalUsersSource getInstance()
        {
            lock (padlock)
            {
                if (instance == null)
                {
                    instance = new FakeWSExternalUsersSource();
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
                    //UserGuid = Guid.NewGuid().ToString(),
                    AccountName = $"i:05.t|trustname|external.user{i.ToString()}@company.com",
                    DisplayName = $"External user{i.ToString()}",
                    WorkEmail = $"external.user{i.ToString()}@company.com",
                    JobTitle = jobTitle,
                    Department = department,
                };
                _users.Add(user);
            }
        }

        public bool Init(string wsBaseUrl, TokenSigningCertificate tokenSigningCert)
        {
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

            List<User> usersToReturn = _users.Where((user) => String.Concat(user.WorkEmail, user.AccountName, "|", user.FirstName, " ", user.LastName, "|", user.DisplayName).ToLower().Contains(searchString.ToLower())).ToList<User>();
            UPSBrowserLogger.LogDebug(loggingCategory, $"usersToReturn.Count: {usersToReturn.Count}");
            return usersToReturn;
        }

        public List<User> getUsersByEmails(List<string> emails)
        {
            List<string> emailsLowerCase = emails.Select(email => email.ToLower()).ToList<string>();
            List<User> usersToReturn = _users.Where( user => emailsLowerCase.Contains<string>(user.WorkEmail.ToLower()) ).ToList<User>();

            return usersToReturn;
        }

    }
}
