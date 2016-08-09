namespace SisGMA.Negocio
{
    using System.Collections.Generic;
    using Entidades;
    using Entidades.Common;
    using Datos.UsuariosDa;

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
            return new OperariosDa().Get(item.IdOperario).IdOperario > 0 ?
                new Operarios() :
                new OperariosDa().Insert(item);
        }

        public Operarios Update(Operarios item)
        {
            return new OperariosDa().Update(item);
        }

        public bool UpdateEstado(int idItem, bool estado)
        {
            return new OperariosDa().UpdateEstado(idItem, estado);
        }
    }
}
