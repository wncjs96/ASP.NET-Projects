using Microsoft.Owin;
using Owin;
using System;
using System.Collections.Generic;
using System.Linq;

[assembly: OwinStartup(typeof(TEAMUP_FRAMEWORK_WEBPAGES.Startup))]

namespace TEAMUP_FRAMEWORK_WEBPAGES
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
