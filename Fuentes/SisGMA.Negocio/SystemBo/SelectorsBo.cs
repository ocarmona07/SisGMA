using System.Collections.Generic;
using SisGMA.Entidades;
using SisGMA.Datos.SystemDa;

namespace SisGMA.Negocio.SystemBo
{
    public class SelectoresBo
    {
        public string Text { get; private set; }
        public string Value { get; private set; }

        public List<Roles> ObtenerRoles()
        {
            Text = "Rol";
            Value = "IdRol";
            return new SelectoresDa().ObtenerRoles();
        }

        public List<Regiones> ObtenerRegiones()
        {
            Text = "Region";
            Value = "IdRegion";
            return new SelectoresDa().ObtenerRegiones();
        }

        public List<Provincias> ObtenerProvincias()
        {
            Text = "Provincia";
            Value = "IdProvincia";
            return new SelectoresDa().ObtenerProvincias();
        }

        public List<Comunas> ObtenerComunas()
        {
            Text = "Comuna";
            Value = "IdComuna";
            return new SelectoresDa().ObtenerComunas();
        }

        public List<Giros> ObtenerGiros()
        {
            Text = "Nombre";
            Value = "IdGiro";
            return new SelectoresDa().ObtenerGiros();
        }

        public List<MarcaVehiculos> ObtenerMarcaVehiculos()
        {
            Text = "Marca";
            Value = "IdMarca";
            return new SelectoresDa().ObtenerMarcaVehiculos();
        }

        public List<ModeloVehiculos> ObtenerModeloVehiculos()
        {
            Text = "Modelo";
            Value = "IdModelo";
            return new SelectoresDa().ObtenerModeloVehiculos();
        }
    }
}
