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
            var operador = new OperariosBo().Get(1);
            var model = new PresentacionViewModel
            {
                Notificaciones = PresentacionViewModel.ToViewModels(new GeneralBo().GetNotificaciones()),
                Usuario = string.Format("{0} {1}", operador.Nombres, operador.ApPaterno),
                NombreRol = operador.Roles.Rol,
                //SkinUsuario = "skin-green-light"
            };
            return View(model);
        }

    }
}
