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
                _sisGmaEntities.Operarios.Attach(item);
                var entry = _sisGmaEntities.Entry(item);
                entry.Property(o => o.Nombres).IsModified = true;
                entry.Property(o => o.ApPaterno).IsModified = true;
                entry.Property(o => o.ApMaterno).IsModified = true;
                entry.Property(o => o.Direccion).IsModified = true;
                entry.Property(o => o.Telefono).IsModified = true;
                entry.Property(o => o.IdComuna).IsModified = true;
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
        }
    }
}