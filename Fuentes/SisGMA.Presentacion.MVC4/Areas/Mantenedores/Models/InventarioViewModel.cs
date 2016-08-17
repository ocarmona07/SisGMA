namespace SisGMA.Presentacion.MVC4.Areas.Mantenedores.Models
{
    using System.Collections.Generic;
    using Entidades;
    using Negocio.InventarioBo;

    public class InventarioViewModel
    {
        public string TituloModalCategoria { get; set; }
        public CategoriasProductos DatosCategoria { get; set; }
        public List<CategoriasProductos> ListaCategorias { get; set; }

        public string TituloModalMarcas { get; set; }
        public MarcaProductos DatosMarca { get; set; }
        public List<MarcaProductos> ListaMarcas { get; set; }

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
    }
}