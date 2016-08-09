namespace SisGMA.Presentacion.MVC4.Areas.Mantenedores.Controllers
{
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

        public PartialViewResult ObtenerOperador(int idOperador)
        {
            var model = new OperadoresViewModel();
            var operariosBo = new OperariosBo();
            var operador = operariosBo.Get(idOperador);
            if (operariosBo.IsValid)
            {
                model = new OperadoresViewModel().ToViewModel(operador);
                model.TituloForm = "Actualizar operario";
            }

            return PartialView("Partials/FormularioPartial", model);
        }

        public PartialViewResult ObtenerListaOperadores()
        {
            var model = new OperadoresViewModel
            {
                TituloForm = "Crear operario",
                ListaOperadores = new OperadoresViewModel().ToViewModels(new OperariosBo().GetAll())
            };
            return PartialView("Partials/ListaOperadoresPartial", model);
        }

        public JsonResult CambiarEstadoOperador(int idOperario, string estado)
        {
            var response = new OperariosBo().UpdateEstado(idOperario, "true".Equals(estado.ToLower()));
            return Json(response, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GuardarOperador(
            int idOperador, string rutOperador, string nombres, string apPaterno, string apMaterno,
            string direccion, string idComuna, string telefono, string imagen, string idRol,
            string clave, bool estado)
        {
            if (!new GeneralBo().ValidarRut(rutOperador))
            {
                return Json(false, JsonRequestBehavior.AllowGet);
            }

            bool response;
            var operariosBo = new OperariosBo();
            // TODO: Guardar imagen
            var rutaImagen = string.Empty;

            var operador = new Operarios
            {
                RutOperario = rutOperador.Replace(".", "").Replace("-", ""),
                Nombres = nombres,
                ApPaterno = apPaterno,
                ApMaterno = apMaterno,
                Direccion = direccion,
                IdComuna = int.Parse(idComuna),
                Telefono = telefono,
                Imagen = rutaImagen,
                IdRol = int.Parse(idRol),
                Clave = clave,
                Estado = estado
            };
            if (idOperador > 0)
            {
                operador.IdOperario = idOperador;
                response = operariosBo.Update(operador).IdOperario > 0;
            }
            else
            {
                response = operariosBo.Insert(operador).IdOperario > 0;
            }

            return Json(response, JsonRequestBehavior.AllowGet);
        }
    }
}
