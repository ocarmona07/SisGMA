
namespace SisGMA.Presentacion.MVC4.Controllers
{
    using System.Web.Mvc;
    using Negocio;
    using Negocio.InventarioBo;

    public class InicioController : Controller
    {
        // GET: /Inicio/

        public ActionResult Index()
        {
            ViewBag.CantidadProductos = new InventarioBo().GetProductos().Count;
            ViewBag.CantidadOperadores = new OperariosBo().GetAll().Count;
            return View();
        }
    }
}
