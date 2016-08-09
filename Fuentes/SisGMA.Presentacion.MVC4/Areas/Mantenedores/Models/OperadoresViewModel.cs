using SisGMA.Negocio.SystemBo;

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

        public List<OperadoresViewModel> ListaOperadores { get; set; }

        public OperadoresViewModel ToViewModel(Operarios operario)
        {
            var retorno = new OperadoresViewModel();
            if (operario != null)
            {
                var rutNum = int.Parse(operario.RutOperario.Substring(0, operario.RutOperario.Length - 1));
                var rutDv = operario.RutOperario.Substring(operario.RutOperario.Length - 1, 1);
                retorno = new OperadoresViewModel
                {
                    IdOperario = operario.IdOperario,
                    RutOperario = rutNum.ToString("N0") + "-" + rutDv,
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

        public Dictionary<string, string> ListaRegiones()
        {
            var response = new Dictionary<string, string>();
            var regiones = new SelectoresBo().ObtenerRegiones();
            if (regiones != null)
            {
                foreach (var region in regiones)
                {
                    response.Add(region.Region, region.IdRegion.ToString());
                }
            }

            return response;
        }

        public Dictionary<string, string> ListaProvincias()
        {
            var response = new Dictionary<string, string>();
            var provincias = new SelectoresBo().ObtenerProvincias();
            if (provincias != null)
            {
                foreach (var provincia in provincias)
                {
                    response.Add(provincia.Provincia, provincia.IdProvincia.ToString());
                }
            }

            return response;
        }

        public Dictionary<string, string> ListaComunas()
        {
            var response = new Dictionary<string, string>();
            var comunas = new SelectoresBo().ObtenerComunas();
            if (comunas != null)
            {
                foreach (var comuna in comunas)
                {
                    response.Add(comuna.Comuna, comuna.IdComuna.ToString());
                }
            }

            return response;
        }

        public Dictionary<string, string> ListaRoles()
        {
            var response = new Dictionary<string, string>();
            var roles = new SelectoresBo().ObtenerRoles();
            if (roles != null)
            {
                foreach (var rol in roles)
                {
                    response.Add(rol.Rol, rol.IdRol.ToString());
                }
            }

            return response;
        }
    }
}