namespace SisGMA.Presentacion.MVC4.Controllers
{
    using System.Web.Mvc;

    public class InicioController : Controller
    {
        // GET: /Inicio/

        public ActionResult Index()
        {
            ViewBag.CantidadProductos = 0;
            ViewBag.CantidadOperadores = 0;
            return View();
        }
    }
}
