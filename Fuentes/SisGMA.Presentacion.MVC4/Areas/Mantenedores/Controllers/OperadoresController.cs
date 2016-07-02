namespace SisGMA.Presentacion.MVC4.Areas.Mantenedores.Controllers
{
    using System.Collections.Generic;
    using System.Web.Mvc;
    using Entidades;
    using Models;
    using Negocio;

    public class OperadoresController : Controller
    {
        // GET: /Mantenedores/Operadores/
        public ActionResult Index()
        {
            var model = new OperadoresViewModel
            {
                TituloForm = "Crear operario",
                ListaOperadores = new OperadoresViewModel().ToViewModels(new OperariosBo().GetAll())
            };

            return View(model);
        }

        public JsonResult ObtenerOperador(int idOperador)
        {
            var model = new OperadoresViewModel();
            var operariosBo = new OperariosBo();
            var operador = operariosBo.Get(1);
            if (operariosBo.IsValid)
            {
                model = new OperadoresViewModel().ToViewModel(operador);
                model.TituloForm = "Actualizar operario";
            }
            return Json(model);
        }

        public JsonResult ObtenerListaOperadores()
        {
            var response = new List<Operarios>();

            return Json(response, JsonRequestBehavior.AllowGet);
        }
    }
}
