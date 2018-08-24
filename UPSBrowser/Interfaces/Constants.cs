using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kcell.UPSBrowser
{
    static class Constants
    {
        public const int searchStringMingLength = 3;
        public const int jwtTokenLifetimeInMinutes = 5;
        public const string jwtTokenAudience = "upsbrowser_ws";
        public const string propertyBagPropertyName = "upsbrowserusers";
    }
}
