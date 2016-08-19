namespace SisGMA.Presentacion.MVC4.Areas.Inventario.Models
{
    using System.Collections.Generic;
    using Entidades;
    using Negocio.InventarioBo;

    public class ProductosViewModel
    {
        public string TituloModalProductos { get; set; }
        public CategoriasProductos DatosCategoria { get; set; }
        public List<CategoriasProductos> ListaCategorias { get; set; }
        public Productos DatosProducto { get; set; }
        public List<Productos> ListaProductos { get; set; }

        public Dictionary<string, string> DdlListaCategorias()
        {
            var response = new Dictionary<string, string>();
            var categorias = new InventarioBo().GetCategorias();
            if (categorias != null)
            {
                foreach (var categoria in categorias)
                {
                    response.Add(categoria.Categoria, categoria.IdCategoria.ToString());
                }
            }

            return response;
        }

        public Dictionary<string, string> DdlListaMarcas()
        {
            var response = new Dictionary<string, string>();
            var marcas = new InventarioBo().GetMarcas();
            if (marcas != null)
            {
                foreach (var marca in marcas)
                {
                    response.Add(marca.Marca, marca.IdMarca.ToString());
                }
            }

            return response;
        }
    }
}