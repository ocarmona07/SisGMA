namespace SisGMA.Negocio
{
    using Entidades;
    using Datos;

    public class ClientesBo
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
