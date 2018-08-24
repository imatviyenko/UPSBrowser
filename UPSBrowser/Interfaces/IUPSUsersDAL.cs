using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kcell.UPSBrowser
{
    interface IUPSUsersDAL
    {
        User getUserByEmail(string email);
        User getUserByGuid(string guid);
        List<User> getUsersBySearchString(string searchString);

        User updateUser(User updatedUser);

        User createUser(User newUser, string identityProviderName);

        bool deleteUserByGuid(string guid);
    }
}
