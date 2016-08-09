using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using SisGMA.Entidades;
using SisGMA.Entidades.Common;

namespace SisGMA.Datos.SystemDa
{
    public class NotificacionesDa : BaseEntity
    {
        private readonly SisGMAEntities _sisGmaEntities;

        public NotificacionesDa()
        {
            IsValid = true;
            ErrorMessage = string.Empty;
            if (_sisGmaEntities == null)
            {
                _sisGmaEntities = new SisGMAEntities();
            }
        }

        public Notificaciones Insert(Notificaciones item)
        {
            try
            {
                _sisGmaEntities.Notificaciones.Add(item);
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

        public Notificaciones Get(int idItem)
        {
            try
            {
                return _sisGmaEntities.Notificaciones.FirstOrDefault(o => o.IdNotificacion == idItem);
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

        public List<Notificaciones> GetAll()
        {
            try
            {
                return _sisGmaEntities.Notificaciones.ToList();
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

        public Notificaciones Update(Notificaciones item)
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

        public bool Delete(int idItem)
        {
            try
            {
                var entry = _sisGmaEntities.Notificaciones.FirstOrDefault(o => o.IdNotificacion == idItem);
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
