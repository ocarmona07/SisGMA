namespace SisGMA.Negocio
{
    using Entidades;
    using Datos;

    public class OperariosBo
    {
        public Operarios Get(int idItem)
        {
            return new OperariosDa().Get(idItem);
        }

        public Operarios Insert(Operarios item)
        {
            return new OperariosDa().Insert(item);
        }


    }
}
