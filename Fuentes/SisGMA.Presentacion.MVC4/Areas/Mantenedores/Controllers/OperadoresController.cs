namespace SisGMA.Presentacion.MVC4.Areas.Mantenedores.Controllers
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.Mvc;
    using Models;
    using Negocio;

    public class OperadoresController : Controller
    {
        // GET: /Mantenedores/Operadores/
        public ActionResult Index()
        {
            var model = new OperadoresViewModel
            {
                TituloForm = "Crear operario"
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
    }
}
