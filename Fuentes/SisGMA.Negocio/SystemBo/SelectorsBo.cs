namespace SisGMA.Negocio.SystemBo
{
    using System.Collections.Generic;
    using Entidades;
    using Datos.SystemDa;

    public class SelectoresBo
    {
        public List<Roles> ObtenerRoles()
        {
            return new SelectoresDa().ObtenerRoles();
        }

        public List<CategoriasAcceso> ObtenerCategorias()
        {
            return new SelectoresDa().ObtenerCategorias();
        }

        public List<Accesos> ObtenerAccesos()
        {
            return new SelectoresDa().ObtenerAccesos();
        }

        public List<Regiones> ObtenerRegiones()
        {
            return new SelectoresDa().ObtenerRegiones();
        }

        public List<Provincias> ObtenerProvincias()
        {
            return new SelectoresDa().ObtenerProvincias();
        }

        public List<Comunas> ObtenerComunas()
        {
            return new SelectoresDa().ObtenerComunas();
        }

        public List<Giros> ObtenerGiros()
        {
            return new SelectoresDa().ObtenerGiros();
        }

        public List<MarcaVehiculos> ObtenerMarcaVehiculos()
        {
            return new SelectoresDa().ObtenerMarcaVehiculos();
        }

        public List<ModeloVehiculos> ObtenerModeloVehiculos()
        {
            return new SelectoresDa().ObtenerModeloVehiculos();
        }
    }
}
