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
        }

        public Accesos Get(int idItem)
        {
            try
            {
                return _sisGmaEntities.Accesos.FirstOrDefault(o => o.IdAcceso == idItem); // TODO: Reemplazar Id
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
                _sisGmaEntities.Accesos.Attach(item);
                var entry = _sisGmaEntities.Entry(item);
                entry.Property(o => o.Estado).IsModified = true;
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
        }

        public bool Delete(int idItem)
        {
            try
            {
                var entry = _sisGmaEntities.Accesos.FirstOrDefault(o => o.IdAcceso == idItem); // TODO: Reemplazar Id
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
        }
    }
}
