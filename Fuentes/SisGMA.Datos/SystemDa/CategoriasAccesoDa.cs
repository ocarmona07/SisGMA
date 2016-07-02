using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using SisGMA.Entidades;
using SisGMA.Entidades.Common;

namespace SisGMA.Datos.SystemDa
{
    public class CategoriasAccesoDa : BaseEntity
    {
        private readonly SisGMAEntities _sisGmaEntities;

        public CategoriasAccesoDa()
        {
            IsValid = true;
            ErrorMessage = string.Empty;
            if (_sisGmaEntities == null)
            {
                _sisGmaEntities = new SisGMAEntities();
            }
        }

        public CategoriasAcceso Insert(CategoriasAcceso item)
        {
            try
            {
                _sisGmaEntities.CategoriasAcceso.Add(item);
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

        public CategoriasAcceso Get(int idItem)
        {
            try
            {
                return _sisGmaEntities.CategoriasAcceso.FirstOrDefault(o => o.IdCategoriaAcceso == idItem);
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

        public List<CategoriasAcceso> GetAll()
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
        }

        public CategoriasAcceso Update(CategoriasAcceso item)
        {
            try
            {
                _sisGmaEntities.CategoriasAcceso.Attach(item);
                var entry = _sisGmaEntities.Entry(item);
                entry.Property(o => o.Categoria).IsModified = true;
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
                var entry = _sisGmaEntities.CategoriasAcceso.FirstOrDefault(o => o.IdCategoriaAcceso == idItem);
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
