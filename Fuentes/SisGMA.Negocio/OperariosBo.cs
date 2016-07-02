using System.Collections.Generic;
using SisGMA.Entidades;
using SisGMA.Datos.UsuariosDa;
using SisGMA.Entidades.Common;

namespace SisGMA.Negocio
{
    public class OperariosBo : BaseEntity
    {
        public List<Operarios> GetAll()
        {
            var response = new OperariosDa();
            IsValid = response.IsValid;
            ErrorMessage = response.ErrorMessage;
            return response.GetAll();
        }

        public Operarios Get(int idItem)
        {
            var response = new OperariosDa();
            IsValid = response.IsValid;
            ErrorMessage = response.ErrorMessage;
            return response.Get(idItem);
        }

        public Operarios Insert(Operarios item)
        {
            var response = new OperariosDa();
            IsValid = response.IsValid;
            ErrorMessage = response.ErrorMessage;
            return response.Insert(item);
        }
    }
}
