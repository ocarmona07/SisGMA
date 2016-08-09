namespace SisGMA.Presentacion.MVC4.Areas.Mantenedores.Controllers
{
    using System.Linq;
    using System.Web.Mvc;
    using Entidades;
    using Models;
    using Negocio.SystemBo;

    public class AccesosController : Controller
    {
        // GET: /Mantenedores/Accesos/
        public ActionResult Index()
        {
            var model = new AccesosViewModel
            {
                TituloModalAcceso = "Crear Acceso",
                TituloModalCategoria = "Crear Categoría",
                DatosAcceso = new Accesos(),
                DatosCategoria = new CategoriasAcceso(),
                ListaAccesos = new AccesosBo().GetAccesos(),
                ListaCategorias = new AccesosBo().GetCategorias()
            };
            return View(model);
        }

        public PartialViewResult ObtenerDatosAcceso(int idAcceso)
        {
            var model = new AccesosViewModel
            {
                TituloModalAcceso = "Actualizar Acceso",
                DatosAcceso = new Accesos()
            };
            var acceso = new AccesosBo().GetAcceso(idAcceso);
            if (acceso != null)
            {
                model.DatosAcceso = acceso;
            }

            return PartialView("Partials/ModalAccesoPartial", model);
        }

        public PartialViewResult ObtenerDatosCategoria(int idCategoria)
        {
            var model = new AccesosViewModel
            {
                TituloModalCategoria = "Actualizar Categoría",
                DatosCategoria = new CategoriasAcceso()
            };
            var categoria = new AccesosBo().GetCategoria(idCategoria);
            if (categoria != null)
            {
                model.DatosCategoria = categoria;
            }

            return PartialView("Partials/ModalCategoriaPartial", model);
        }

        public JsonResult ObtenerAccesosPorCategoria(int idCategoria)
        {
            var response = "";
            var categorias = new SelectoresBo().ObtenerAccesos();
            if (categorias != null)
            {
                foreach (var categoria in categorias.Where(c => c.IdCategoriaAcceso == idCategoria))
                {
                    response += "<option value='" + categoria.IdAcceso + "'>" 
                        + categoria.NombreAcceso + "</option>";
                }
            }

            return Json(response, JsonRequestBehavior.AllowGet);
        }
        
        public PartialViewResult ObtenerListaAccesos()
        {
            var model = new AccesosViewModel
            {
                TituloModalAcceso = "Crear Acceso",
                DatosAcceso = new Accesos(),
                ListaAccesos = new AccesosBo().GetAccesos()
            };
            return PartialView("Partials/ListaAccesosPartial", model);
        }
        
        public PartialViewResult ObtenerListaCategorias()
        {
            var model = new AccesosViewModel
            {
                TituloModalCategoria = "Crear Categoría",
                DatosCategoria = new CategoriasAcceso(),
                ListaCategorias = new AccesosBo().GetCategorias()
            };
            return PartialView("Partials/ListaCategoriasPartial", model);
        }

        public JsonResult GuardarAcceso(int idAcceso, string idCategoriaAcceso, string idAccesoPadre, string nombreAcceso,
            string descripcion, string icono, string urlAcceso, string estado)
        {
            int idCat, idAccPadre;
            int.TryParse(idCategoriaAcceso, out idCat);
            int.TryParse(idAccesoPadre, out idAccPadre);
            bool response;
            var accesosBo = new AccesosBo();
            var dataAcceso = new Accesos
            {
                IdAcceso = idAcceso,
                IdCategoriaAcceso = idCat,
                NombreAcceso = nombreAcceso,
                Descripcion = descripcion,
                Icono = icono,
                UrlAcceso = urlAcceso,
                Estado = "true".Equals(estado.ToLower())
            };
            if (idAccPadre > 0)
            {
                dataAcceso.IdAccesoPadre = idAccPadre;
            }

            if (accesosBo.GetAcceso(idAcceso) != null)
            {
                response = accesosBo.UpdateAcceso(dataAcceso).IdAcceso > 0;
            }
            else
            {
                response = accesosBo.InsertAcceso(dataAcceso).IdAcceso > 0;
            }

            return Json(response, JsonRequestBehavior.AllowGet);
        }

        public JsonResult CambiarEstadoAcceso(int idAcceso, string estado)
        {
            var response = new AccesosBo().UpdateEstadoAcceso(idAcceso, "true".Equals(estado.ToLower()));
            return Json(response, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GuardarCategoria(int idCategoria, string categoria, string estado)
        {
            bool response;
            var accesosBo = new AccesosBo();
            var dataCategoria = new CategoriasAcceso
            {
                IdCategoriaAcceso = idCategoria,
                Categoria = categoria,
                Estado = "true".Equals(estado.ToLower())
            };
            if (accesosBo.GetCategoria(idCategoria) != null)
            {
                response = accesosBo.UpdateCategoria(dataCategoria).IdCategoriaAcceso > 0;
            }
            else
            {
                response = accesosBo.InsertCategoria(dataCategoria).IdCategoriaAcceso > 0;
            }

            return Json(response, JsonRequestBehavior.AllowGet);
        }

        public JsonResult CambiarEstadoCategoria(int idCategoria, string estado)
        {
            var response = new AccesosBo().UpdateEstadoCategoria(idCategoria, "true".Equals(estado.ToLower()));
            return Json(response, JsonRequestBehavior.AllowGet);
        }
    }
}
