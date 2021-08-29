using Microsoft.AspNet.SignalR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TEAMUP_FRAMEWORK_WEBFORM
{
    public class SessionHub : Hub
    {
        public void Announce(string announcement)
        {
            Clients.All.Announce(announcement);
        }
    }
}