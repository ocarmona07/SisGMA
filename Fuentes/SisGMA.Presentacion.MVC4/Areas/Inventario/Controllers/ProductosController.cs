namespace SisGMA.Presentacion.MVC4.Areas.Inventario.Controllers
{
    using System;
    using System.Web.Mvc;
    using Entidades;
    using Models;
    using Negocio.InventarioBo;

    public class ProductosController : Controller
    {
        // GET: /Inventario/Productos/
        public ActionResult Index()
        {
            var model = new ProductosViewModel
            {
                TituloProductos = "Crear producto",
                DatosProducto = new Productos(),
                ListaProductos = new InventarioBo().GetProductos()
            };
            return View(model);
        }

        public PartialViewResult ObtenerProducto(int idProducto)
        {
            var model = new ProductosViewModel();
            var inventarioBo = new InventarioBo();
            var operador = inventarioBo.GetProducto(idProducto);
            if (inventarioBo.IsValid)
            {
                model.TituloProductos = "Actualizar producto";
                model.DatosProducto = operador;
            }

            return PartialView("Partials/FormularioPartial", model);
        }

        public PartialViewResult ObtenerListaProductos()
        {
            var model = new ProductosViewModel
            {
                TituloProductos = "Crear producto",
                ListaProductos = new InventarioBo().GetProductos()
            };
            return PartialView("Partials/ListaProductosPartial", model);
        }

        public JsonResult CambiarCantidadProductos(int idProducto, string cantidad)
        {
            var response = new InventarioBo().UpdateCantidadProducto(idProducto, int.Parse(cantidad));
            return Json(response, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GuardarProducto(
            int idProducto, int idCategoria, int idMarca, string codigo, string descripcion,
            string valorIngreso, string valorSalida, string cantidad)
        {
            decimal vlrIngreso, vlrSalida;
            decimal.TryParse(valorIngreso, out vlrIngreso);
            decimal.TryParse(valorSalida, out vlrSalida);
            int cant;
            int.TryParse(cantidad, out cant);
            bool response;
            var inventarioBo = new InventarioBo();
            var producto = new Productos
            {
                IdCategoria = idCategoria,
                IdMarca = idMarca,
                Codigo = codigo,
                Descripcion = descripcion,
                ValorIngreso = vlrIngreso,
                ValorSalida = vlrSalida,
                Cantidad = cant
            };
            if (idProducto > 0)
            {
                producto.IdProducto = idProducto;
                producto.FechaIngreso = DateTime.Now; // TODO: Revisar
                response = inventarioBo.UpdateProducto(producto).IdProducto > 0;
            }
            else
            {
                producto.FechaIngreso = DateTime.Now;
                response = inventarioBo.InsertProducto(producto).IdProducto > 0;
            }

            return Json(response, JsonRequestBehavior.AllowGet);
        }
    }
}
