using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography.X509Certificates;

namespace Kcell.UPSBrowser
{
    class TokenSigningCertificate
    {
        public string friendlyName;
        public string thumbprint;
        public string subject;
        public int rank; // default to 0, if the subject part matches the current SPSite host name - 1. Other ranking schemes may be implemented later if needed.
        public X509Certificate2 cert;
    }
    interface ITokenSigningCertificatesHelper
    {
        List<TokenSigningCertificate> getTokenSigningCertificates();
    }
}
