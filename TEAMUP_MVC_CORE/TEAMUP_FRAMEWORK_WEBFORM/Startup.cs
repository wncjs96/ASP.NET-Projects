using Microsoft.Owin;
using Owin;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System;
using System.Threading.Tasks;

[assembly: OwinStartup(typeof(TEAMUP_FRAMEWORK_WEBFORM.App_Start.Startup))]

namespace TEAMUP_FRAMEWORK_WEBFORM.App_Start
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            // 응용 프로그램을 구성하는 방법에 대한 자세한 내용은 https://go.microsoft.com/fwlink/?LinkID=316888을 참조하세요.
            app.MapSignalR();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);


        }
    }
}
