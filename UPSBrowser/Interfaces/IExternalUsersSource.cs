using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kcell.UPSBrowser
{
    interface IExternalUsersSource
    {
        bool Init(string wsBaseUrl, TokenSigningCertificate tokenSigningCert);
        List<User> getUsersBySearchString(string searchString);
        List<User> getUsersByEmails(List<string> emails);
    }
}
