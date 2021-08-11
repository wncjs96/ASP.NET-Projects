using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace TEAMUP_FRAMEWORK_WEBPAGES.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
    }
}
