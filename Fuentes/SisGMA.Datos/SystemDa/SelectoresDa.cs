using System;
using System.Collections.Generic;
using System.Linq;
using SisGMA.Entidades;
using SisGMA.Entidades.Common;

namespace SisGMA.Datos.SystemDa
{
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
            finally
            {
                _sisGmaEntities.Dispose();
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
            finally
            {
                _sisGmaEntities.Dispose();
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
            finally
            {
                _sisGmaEntities.Dispose();
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
            finally
            {
                _sisGmaEntities.Dispose();
            }
        }

        public List<CategoriasAcceso> ObtenerCategoriasAccesos()
        {
            try
            {
                return _sisGmaEntities.CategoriasAcceso.ToList();
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
            finally
            {
                _sisGmaEntities.Dispose();
            }
        }

        public List<Accesos> ObtenerAccesos()
        {
            try
            {
                return _sisGmaEntities.Accesos.ToList();
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
            finally
            {
                _sisGmaEntities.Dispose();
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
            finally
            {
                _sisGmaEntities.Dispose();
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
            finally
            {
                _sisGmaEntities.Dispose();
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
            finally
            {
                _sisGmaEntities.Dispose();
            }
        }
    }
}
