using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using SisGMA.Entidades;
using SisGMA.Entidades.Common;

namespace SisGMA.Datos.UsuariosDa
{
    public class OperariosDa : BaseEntity
    {
        private readonly SisGMAEntities _sisGmaEntities;

        public OperariosDa()
        {
            IsValid = true;
            ErrorMessage = string.Empty;
            if (_sisGmaEntities == null)
            {
                _sisGmaEntities = new SisGMAEntities();
            }
        }

        public Operarios Insert(Operarios item)
        {
            try
            {
                _sisGmaEntities.Operarios.Add(item);
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

        public Operarios Get(int idItem)
        {
            try
            {
                return _sisGmaEntities.Operarios.FirstOrDefault(o => o.IdOperario == idItem);
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

        public List<Operarios> GetAll()
        {
            try
            {
                return _sisGmaEntities.Operarios.ToList();
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

        public Operarios Update(Operarios item)
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

        public bool UpdateEstado(int idItem, bool estado)
        {
            try
            {
                var item = _sisGmaEntities.Operarios.FirstOrDefault(o => o.IdOperario == idItem);
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
                var entry = _sisGmaEntities.Operarios.FirstOrDefault(o => o.IdOperario == idItem);
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
