namespace SisGMA.Presentacion.MVC4.Areas.Mantenedores.Controllers
{
    using System.Web.Mvc;
    using Entidades;
    using Models;
    using Negocio.InventarioBo;

    public class InventarioController : Controller
    {
        // GET: /Mantenedores/Inventario/
        public ActionResult Index()
        {
            var model = new InventarioViewModel
            {
                TituloModalCategoria = "Crear Categoría",
                DatosCategoria = new CategoriasProductos(),
                ListaCategorias = new InventarioBo().GetCategorias(),
                TituloModalMarcas = "Crear Marca",
                DatosMarca = new MarcaProductos(),
                ListaMarcas = new InventarioBo().GetMarcas(),
                TituloModalServicio = "Crear Servicio",
                DatosServicio = new Servicios(),
                ListaServicios = new InventarioBo().GetServicios()
            };
            return View(model);
        }

        #region Categorías

        public PartialViewResult ObtenerDatosCategoria(int idCategoria)
        {
            var model = new InventarioViewModel
            {
                TituloModalCategoria = "Actualizar Categoría",
                DatosCategoria = new CategoriasProductos()
            };
            var categoria = new InventarioBo().GetCategoria(idCategoria);
            if (categoria != null)
            {
                model.DatosCategoria = categoria;
            }

            return PartialView("Partials/ModalCategoriaPartial", model);
        }

        public PartialViewResult ObtenerListaCategorias()
        {
            var model = new InventarioViewModel
            {
                TituloModalCategoria = "Crear Categoría",
                DatosCategoria = new CategoriasProductos(),
                ListaCategorias = new InventarioBo().GetCategorias()
            };
            return PartialView("Partials/ListaCategoriasPartial", model);
        }

        public JsonResult GuardarCategoria(int idCategoria, int? idCategoriaPadre, string codigo,
            string categoria, string icono, string estado)
        {
            bool response;
            var inventarioBo = new InventarioBo();
            var dataCategoria = new CategoriasProductos
            {
                IdCategoria = idCategoria,
                IdCategoriaPadre = idCategoriaPadre,
                Codigo = codigo,
                Categoria = categoria,
                Icono = icono,
                Estado = "true".Equals(estado.ToLower())
            };
            if (inventarioBo.GetCategoria(idCategoria) != null)
            {
                response = inventarioBo.UpdateCategoria(dataCategoria).IdCategoria > 0;
            }
            else
            {
                response = inventarioBo.InsertCategoria(dataCategoria).IdCategoria > 0;
            }

            return Json(response, JsonRequestBehavior.AllowGet);
        }

        public JsonResult CambiarEstadoCategoria(int idCategoria, string estado)
        {
            var response = new InventarioBo().UpdateEstadoCategoria(idCategoria, "true".Equals(estado.ToLower()));
            return Json(response, JsonRequestBehavior.AllowGet);
        }

        public MvcHtmlString ObtenerCategorias()
        {
            var categorias = "<option value=>Ninguno</option>";
            foreach (var item in new InventarioBo().GetCategorias())
            {
                categorias += "\n<option value=\"" + item.IdCategoria + "\">" + item.Categoria + "</option>";
            }

            return MvcHtmlString.Create(categorias);
        }

        #endregion

        #region Marcas

        public PartialViewResult ObtenerDatosMarca(int idMarca)
        {
            var model = new InventarioViewModel
            {
                TituloModalMarcas = "Actualizar Marca",
                DatosMarca = new MarcaProductos()
            };
            var marca = new InventarioBo().GetMarca(idMarca);
            if (marca != null)
            {
                model.DatosMarca = marca;
            }

            return PartialView("Partials/ModalMarcaPartial", model);
        }

        public PartialViewResult ObtenerListaMarcas()
        {
            var model = new InventarioViewModel
            {
                TituloModalMarcas = "Crear Marca",
                DatosMarca = new MarcaProductos(),
                ListaMarcas = new InventarioBo().GetMarcas()
            };
            return PartialView("Partials/ListaMarcasPartial", model);
        }

        public JsonResult GuardarMarca(int idMarca, string marca, string estado)
        {
            bool response;
            var inventarioBo = new InventarioBo();
            var dataMarca = new MarcaProductos
            {
                IdMarca = idMarca,
                Marca = marca,
                Estado = "true".Equals(estado.ToLower())
            };
            if (idMarca > 0)
            {
                response = inventarioBo.UpdateMarca(dataMarca).IdMarca > 0;
            }
            else
            {
                response = inventarioBo.InsertMarca(dataMarca).IdMarca > 0;
            }

            return Json(response, JsonRequestBehavior.AllowGet);
        }

        public JsonResult CambiarEstadoMarca(int idMarca, string estado)
        {
            var response = new InventarioBo().UpdateEstadoMarca(idMarca, "true".Equals(estado.ToLower()));
            return Json(response, JsonRequestBehavior.AllowGet);
        }

        #endregion

        #region Servicios

        public PartialViewResult ObtenerDatosServicio(int idServicio)
        {
            var model = new InventarioViewModel
            {
                TituloModalServicio = "Actualizar Servicio",
                DatosServicio = new Servicios()
            };
            var servicio = new InventarioBo().GetServicio(idServicio);
            if (servicio != null)
            {
                model.DatosServicio = servicio;
            }

            return PartialView("Partials/ModalServicioPartial", model);
        }

        public PartialViewResult ObtenerListaServicios()
        {
            var model = new InventarioViewModel
            {
                TituloModalServicio = "Crear Servicio",
                DatosServicio = new Servicios(),
                ListaServicios = new InventarioBo().GetServicios()
            };
            return PartialView("Partials/ListaServiciosPartial", model);
        }

        public MvcHtmlString ObtenerServicios()
        {
            var categorias = "<option value=>Ninguno</option>";
            foreach (var item in new InventarioBo().GetServicios())
            {
                categorias += "\n<option value=\"" + item.IdServicio + "\">" + item.Servicio + "</option>";
            }

            return MvcHtmlString.Create(categorias);
        }

        public JsonResult GuardarServicio(int idServicio, int? idServicioPadre, string codigo,
            string servicio, string descripcion, string valorSalida, string estado)
        {
            bool response;
            decimal valor;
            decimal.TryParse(valorSalida, out valor);
            var inventarioBo = new InventarioBo();
            var dataServicio = new Servicios
            {
                IdServicio = idServicio,
                IdServicioPadre = idServicioPadre,
                Codigo = codigo,
                Servicio = servicio,
                Descripcion = descripcion,
                ValorSalida = valor,
                Estado = "true".Equals(estado.ToLower())
            };
            if (inventarioBo.GetServicio(idServicio) != null)
            {
                response = inventarioBo.UpdateServicio(dataServicio).IdServicio > 0;
            }
            else
            {
                response = inventarioBo.InsertServicio(dataServicio).IdServicio > 0;
            }

            return Json(response, JsonRequestBehavior.AllowGet);
        }

        public JsonResult CambiarEstadoServicio(int idServicio, string estado)
        {
            var response = new InventarioBo().UpdateEstadoServicio(idServicio, "true".Equals(estado.ToLower()));
            return Json(response, JsonRequestBehavior.AllowGet);
        }

        #endregion
    }
}
