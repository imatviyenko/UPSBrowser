using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kcell.UPSBrowser
{
    interface IActivityLogger
    {
        void LogActivity(string user, LogActivityActionEnum action, LogActivityResultEnum result, string additionalInfo = "");
    }
}
