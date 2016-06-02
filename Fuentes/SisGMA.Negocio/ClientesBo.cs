namespace SisGMA.Negocio
{
    using Entidades;
    using Datos;

    public class ClientesBo : BaseEntity
    {
        public Clientes Get(int idItem)
        {
            var datos = new ClientesDa();
            var response = datos.Get(idItem);
            IsValid = datos.IsValid;
            ErrorMessage = datos.ErrorMessage;
            return response;
        }

        public Clientes Insert(Clientes item)
        {
            var datos = new ClientesDa();
            var response = datos.Insert(item);
            IsValid = datos.IsValid;
            ErrorMessage = datos.ErrorMessage;
            return response;
        }


    }
}
