namespace SisGMA.Negocio
{
    using Entidades;
    using Datos;

    public class CliClientesBo
    {
        public CliClientes Get(int idItem)
        {
            return new CliClientesDa().Get(idItem);
        }

        public CliClientes Insert(CliClientes item)
        {
            return new CliClientesDa().Insert(item);
        }


    }
}
