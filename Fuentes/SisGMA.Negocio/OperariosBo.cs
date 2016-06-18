namespace SisGMA.Negocio
{
    using System.Collections.Generic;
    using System.Linq;
    using Entidades;
    using Datos;

    public class OperariosBo : BaseEntity
    {
        public List<Operarios> GetAll()
        {
            var datos = new OperariosDa();
            var response = datos.GetAll();
            IsValid = datos.IsValid;
            ErrorMessage = datos.ErrorMessage;
            return response;
        }

        public List<Operarios> DisplayOperadores()
        {
            var response = GetAll().Select(o => new Operarios{IdOperario = o.IdOperario}).ToList();
            return response;
        }

        public Operarios Get(int idItem)
        {
            var datos = new OperariosDa();
            var response = datos.Get(idItem);
            IsValid = datos.IsValid;
            ErrorMessage = datos.ErrorMessage;
            return response;
        }

        public Operarios Insert(Operarios item)
        {
            var datos = new OperariosDa();
            var response = datos.Insert(item);
            IsValid = datos.IsValid;
            ErrorMessage = datos.ErrorMessage;
            return response;
        }
    }
}
