using SisGMA.Entidades;
using SisGMA.Entidades.Common;
using SisGMA.Datos;

namespace SisGMA.Negocio
{
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
