using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kcell.UPSBrowser
{
    interface ITokenHelper
    {
        string getTokenString(TokenSigningCertificate signingCertificate);
    }
}
