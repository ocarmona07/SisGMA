namespace SisGMA.Datos
{
    using System;
    using System.Collections.Generic;
    using System.Data.Entity;
    using System.Linq;
    using Entidades;

    public class SelectoresDa : BaseEntity
    {
        private readonly SisGMAEntities _sisGmaEntities;

        public SelectoresDa()
        {
            IsValid = true;
            ErrorMessage = string.Empty;
            if (_sisGmaEntities == null)
            {
                _sisGmaEntities = new SisGMAEntities();
            }
        }
        
        public List<Regiones> ObtenerRegiones()
        {
            try
            {
                return _sisGmaEntities.Regiones.ToList();
            }
            catch (EntryPointNotFoundException ep)
            {
                IsValid = false;
                ErrorMessage = ep.GetBaseException().Message;
                return null;
            }
            catch (Exception e)
            {
                IsValid = false;
                ErrorMessage = e.GetBaseException().Message;
                return null;
            }
        }

        public List<Provincias> ObtenerProvincias()
        {
            try
            {
                return _sisGmaEntities.Provincias.ToList();
            }
            catch (EntryPointNotFoundException ep)
            {
                IsValid = false;
                ErrorMessage = ep.GetBaseException().Message;
                return null;
            }
            catch (Exception e)
            {
                IsValid = false;
                ErrorMessage = e.GetBaseException().Message;
                return null;
            }
        }

        public List<Comunas> ObtenerComunas()
        {
            try
            {
                return _sisGmaEntities.Comunas.ToList();
            }
            catch (EntryPointNotFoundException ep)
            {
                IsValid = false;
                ErrorMessage = ep.GetBaseException().Message;
                return null;
            }
            catch (Exception e)
            {
                IsValid = false;
                ErrorMessage = e.GetBaseException().Message;
                return null;
            }
        }

        public List<Roles> ObtenerRoles()
        {
            try
            {
                return _sisGmaEntities.Roles.ToList();
            }
            catch (EntryPointNotFoundException ep)
            {
                IsValid = false;
                ErrorMessage = ep.GetBaseException().Message;
                return null;
            }
            catch (Exception e)
            {
                IsValid = false;
                ErrorMessage = e.GetBaseException().Message;
                return null;
            }
        }

        public List<Giros> ObtenerGiros()
        {
            try
            {
                return _sisGmaEntities.Giros.ToList();
            }
            catch (EntryPointNotFoundException ep)
            {
                IsValid = false;
                ErrorMessage = ep.GetBaseException().Message;
                return null;
            }
            catch (Exception e)
            {
                IsValid = false;
                ErrorMessage = e.GetBaseException().Message;
                return null;
            }
        }

        public List<MarcaVehiculos> ObtenerMarcaVehiculos()
        {
            try
            {
                return _sisGmaEntities.MarcaVehiculos.ToList();
            }
            catch (EntryPointNotFoundException ep)
            {
                IsValid = false;
                ErrorMessage = ep.GetBaseException().Message;
                return null;
            }
            catch (Exception e)
            {
                IsValid = false;
                ErrorMessage = e.GetBaseException().Message;
                return null;
            }
        }

        public List<ModeloVehiculos> ObtenerModeloVehiculos()
        {
            try
            {
                return _sisGmaEntities.ModeloVehiculos.ToList();
            }
            catch (EntryPointNotFoundException ep)
            {
                IsValid = false;
                ErrorMessage = ep.GetBaseException().Message;
                return null;
            }
            catch (Exception e)
            {
                IsValid = false;
                ErrorMessage = e.GetBaseException().Message;
                return null;
            }
        }
    }
}
