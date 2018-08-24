using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kcell.UPSBrowser
{

    class IdentityProvider
    {
        public string Name;
        public string DisplayName;
        public string Description;
    }
    interface IIdentityProvidersHelper
    {
        List<IdentityProvider> getIdentityProviders();
        string getAccountNameForEmail(string email, string indentityProviderName);
    }
}
