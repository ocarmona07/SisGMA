namespace SisGMA.Presentacion.MVC4.Areas.Inventario.Controllers
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.Mvc;

    public class ProductosController : Controller
    {
        // GET: /Inventario/Productos/
        public ActionResult Index()
        {
            return View();
        }
    }
}
