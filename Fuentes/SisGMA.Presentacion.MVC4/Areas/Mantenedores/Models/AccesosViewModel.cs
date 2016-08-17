namespace SisGMA.Presentacion.MVC4.Areas.Mantenedores.Models
{
    using System.Linq;
    using System.Collections.Generic;
    using Entidades;
    using Negocio.SystemBo;

    public class AccesosViewModel
    {
        public string TituloModalAcceso { get; set; }
        public string TituloModalCategoria { get; set; }
        public Accesos DatosAcceso { get; set; }
        public List<Accesos> ListaAccesos { get; set; }
        public CategoriasAcceso DatosCategoria { get; set; }
        public List<CategoriasAcceso> ListaCategorias { get; set; }

        public Dictionary<string, string> DdlListaCategorias()
        {
            var response = new Dictionary<string, string>();
            var categorias = new SelectoresBo().ObtenerCategoriasAccesos();
            if (categorias != null)
            {
                foreach (var categoria in categorias)
                {
                    response.Add(categoria.Categoria, categoria.IdCategoriaAcceso.ToString());
                }
            }

            return response;
        }

        public Dictionary<string, string> DdlListaAccesos(int? idCategoria)
        {
            var response = new Dictionary<string, string>();
            var accesos = new SelectoresBo().ObtenerAccesos();
            if (accesos != null && idCategoria != null)
            {
                foreach (var acceso in accesos.Where(l => l.IdCategoriaAcceso == idCategoria))
                {
                    response.Add(acceso.NombreAcceso, acceso.IdAcceso.ToString());
                }
            }

            return response;
        }
    }
}