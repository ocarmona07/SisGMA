﻿namespace SisGMA.Presentacion.MVC4.Controllers
{
    using System;
    using System.Collections.Generic;
    using System.Configuration;
    using System.Linq;
    using System.Web;
    using System.Web.Mvc;

    public class HomeController : Controller
    {
        // GET: /View/
        public ActionResult Index()
        {
            Response.Redirect(ConfigurationManager.AppSettings.Get("BaseUrl") + "/Inicio");
            return View();
        }
    }
}
