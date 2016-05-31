namespace SisGMA.Datos
{
    using System;
    using System.Collections.Generic;
    using System.Data.Entity;
    using System.Linq;
    using Entidades;

    public class CliClientesDa : BaseEntity
    {
        private readonly SisGMAEntities _sisGmaEntities;

        public CliClientesDa()
        {
            IsValid = true;
            ErrorMessage = string.Empty;
            if (_sisGmaEntities == null)
            {
                _sisGmaEntities = new SisGMAEntities();
            }
        }

        public CliClientes Insert(CliClientes cliClientes)
        {
            try
            {
                _sisGmaEntities.CliClientes.Add(cliClientes);
                _sisGmaEntities.SaveChanges();
                return cliClientes;
            }
            catch (EntryPointNotFoundException en)
            {
                IsValid = false;
                ErrorMessage = en.GetBaseException().Message;
                return null;
            }
            catch (Exception e)
            {
                IsValid = false;
                ErrorMessage = e.GetBaseException().Message;
                return null;
            }
        }

        public CliClientes Get(int idCliente)
        {
            try
            {
                return _sisGmaEntities.CliClientes.FirstOrDefault(o => o.IdCliente == idCliente);
            }
            catch (EntryPointNotFoundException en)
            {
                IsValid = false;
                ErrorMessage = en.GetBaseException().Message;
                return null;
            }
            catch (Exception e)
            {
                IsValid = false;
                ErrorMessage = e.GetBaseException().Message;
                return null;
            }
        }

        public List<CliClientes> GetAll()
        {
            try
            {
                return _sisGmaEntities.CliClientes.ToList();
            }
            catch (EntryPointNotFoundException en)
            {
                IsValid = false;
                ErrorMessage = en.GetBaseException().Message;
                return null;
            }
            catch (Exception e)
            {
                IsValid = false;
                ErrorMessage = e.GetBaseException().Message;
                return null;
            }
        }

        public CliClientes Update(CliClientes cliClientes)
        {
            try
            {
                _sisGmaEntities.CliClientes.Attach(cliClientes);
                var entry = _sisGmaEntities.Entry(cliClientes);
                entry.Property(o => o.Nombres).IsModified = true;
                entry.Property(o => o.ApPaterno).IsModified = true;
                entry.Property(o => o.ApMaterno).IsModified = true;
                entry.Property(o => o.Direccion).IsModified = true;
                entry.Property(o => o.Email).IsModified = true;
                entry.Property(o => o.Telefono).IsModified = true;
                entry.Property(o => o.IdComuna).IsModified = true;
                entry.Property(o => o.Estado).IsModified = true;
                _sisGmaEntities.SaveChanges();
                return cliClientes;
            }
            catch (EntryPointNotFoundException en)
            {
                IsValid = false;
                ErrorMessage = en.GetBaseException().Message;
                return null;
            }
            catch (Exception e)
            {
                IsValid = false;
                ErrorMessage = e.GetBaseException().Message;
                return null;
            }
        }

        public bool Delete(int idCliente)
        {
            try
            {
                var entry = _sisGmaEntities.CliClientes.FirstOrDefault(o => o.IdCliente == idCliente);
                _sisGmaEntities.Entry(entry).State = EntityState.Deleted;
                return _sisGmaEntities.SaveChanges() > 0;
            }
            catch (EntryPointNotFoundException en)
            {
                IsValid = false;
                ErrorMessage = en.GetBaseException().Message;
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
