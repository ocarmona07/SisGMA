namespace SisGMA.Negocio
{
    using Entidades;
    using Entidades.Common;
    using Datos;

    public class ClientesBo : BaseEntity
    {
        public Clientes Get(int idItem)
        {
            return new ClientesDa().Get(idItem);
        }

        public Clientes Insert(Clientes item)
        {
            return new ClientesDa().Insert(item);
        }
    }
}
