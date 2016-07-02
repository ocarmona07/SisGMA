namespace SisGMA.Presentacion.MVC4.Areas.Mantenedores.Models
{
    using System.Collections.Generic;
    using System.Linq;
    using Entidades;

    public class OperadoresViewModel
    {
        public string TituloForm { get; set; }        
        public int IdOperario { get; set; }
        public string RutOperario { get; set; }
        public string Nombres { get; set; }
        public string ApPaterno { get; set; }
        public string ApMaterno { get; set; }
        public string Direccion { get; set; }
        public int IdRegion { get; set; }
        public int IdProvincia { get; set; }
        public int IdComuna { get; set; }
        public string Telefono { get; set; }
        public string Imagen { get; set; }
        public int IdRol { get; set; }
        public string Rol { get; set; }
        public string Clave { get; set; }
        public bool Estado { get; set; }

        public List<OperadoresViewModel> ListaOperadores  { get; set; }

        public OperadoresViewModel ToViewModel(Operarios operario)
        {
            var retorno = new OperadoresViewModel();
            if (operario != null)
            {
                retorno = new OperadoresViewModel
                {
                    IdOperario = operario.IdOperario,
                    RutOperario = operario.RutOperario,
                    Nombres = operario.Nombres,
                    ApPaterno = operario.ApPaterno,
                    ApMaterno = operario.ApMaterno,
                    Direccion = operario.Direccion,
                    IdRegion = operario.Comunas.Provincias.IdRegion ?? 0,
                    IdProvincia = operario.Comunas.IdProvincia ?? 0,
                    IdComuna = operario.IdComuna ?? 0,
                    Telefono = operario.Telefono,
                    Imagen = operario.Imagen,
                    IdRol = operario.IdRol ?? 0,
                    Rol = operario.Roles.Rol,
                    Clave = operario.Clave,
                    Estado = operario.Estado
                };
            }

            return retorno;
        }

        public List<OperadoresViewModel> ToViewModels(List<Operarios> operarios)
        {
            var list = new List<OperadoresViewModel>();
            if (operarios != null)
            {
                list = operarios.Select(o => new OperadoresViewModel
                {
                    IdOperario = o.IdOperario,
                    RutOperario = o.RutOperario,
                    Nombres = o.Nombres,
                    ApPaterno = o.ApPaterno,
                    ApMaterno = o.ApMaterno,
                    Direccion = o.Direccion,
                    IdRegion = o.Comunas.Provincias.IdRegion ?? 0,
                    IdProvincia = o.Comunas.IdProvincia ?? 0,
                    IdComuna = o.IdComuna ?? 0,
                    Telefono = o.Telefono,
                    Imagen = o.Imagen,
                    IdRol = o.IdRol ?? 0,
                    Rol = o.Roles.Rol,
                    Clave = o.Clave,
                    Estado = o.Estado
                }).ToList();
            }

            return list;
        }
    }
}