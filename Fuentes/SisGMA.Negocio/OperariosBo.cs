namespace SisGMA.Negocio
{
    using Entidades;
    using Datos;

    public class OperariosBo : BaseEntity
    {
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
