using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using SisGMA.Entidades;
using SisGMA.Entidades.Common;

namespace SisGMA.Datos.SystemDa
{
    public class AccesosDa : BaseEntity
    {
        private readonly SisGMAEntities _sisGmaEntities;

        public AccesosDa()
        {
            IsValid = true;
            ErrorMessage = string.Empty;
            if (_sisGmaEntities == null)
            {
                _sisGmaEntities = new SisGMAEntities();
            }
        }

        public Accesos Insert(Accesos item)
        {
            try
            {
                _sisGmaEntities.Accesos.Add(item);
                _sisGmaEntities.SaveChanges();
                return item;
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

        public Accesos Get(int idItem)
        {
            try
            {
                return _sisGmaEntities.Accesos.FirstOrDefault(o => o.IdAcceso == idItem);
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

        public List<Accesos> GetAll()
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
        }

        public Accesos Update(Accesos item)
        {
            try
            {
                _sisGmaEntities.Entry(item).State = EntityState.Modified;
                _sisGmaEntities.SaveChanges();
                return item;
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

        public bool UpdateEstado(int idAcceso, bool estado)
        {
            try
            {
                var item = _sisGmaEntities.Accesos.FirstOrDefault(o => o.IdAcceso == idAcceso);
                if (item != null)
                {
                    item.Estado = estado;
                    _sisGmaEntities.Entry(item).State = EntityState.Modified;
                    return _sisGmaEntities.SaveChanges() > 0;
                }
                else
                {
                    return false;
                }
            }
            catch (EntryPointNotFoundException ep)
            {
                IsValid = false;
                ErrorMessage = ep.GetBaseException().Message;
                return false;
            }
            catch (Exception e)
            {
                IsValid = false;
                ErrorMessage = e.GetBaseException().Message;
                return false;
            }
            finally
            {
                _sisGmaEntities.Dispose();
            }
        }

        public bool Delete(int idItem)
        {
            try
            {
                var entry = _sisGmaEntities.Accesos.FirstOrDefault(o => o.IdAcceso == idItem);
                _sisGmaEntities.Entry(entry).State = EntityState.Deleted;
                return _sisGmaEntities.SaveChanges() > 0;
            }
            catch (EntryPointNotFoundException ep)
            {
                IsValid = false;
                ErrorMessage = ep.GetBaseException().Message;
                return false;
            }
            catch (Exception e)
            {
                IsValid = false;
                ErrorMessage = e.GetBaseException().Message;
                return false;
            }
            finally
            {
                _sisGmaEntities.Dispose();
            }
        }
    }
}
