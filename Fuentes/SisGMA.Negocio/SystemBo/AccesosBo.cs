namespace SisGMA.Negocio.SystemBo
{
    using System.Collections.Generic;
    using Entidades;
    using Datos.SystemDa;

    public class AccesosBo
    {
        #region Accesos

        public Accesos InsertAcceso(Accesos acceso)
        {
            return new AccesosDa().Insert(acceso);
        }

        public Accesos UpdateAcceso(Accesos acceso)
        {
            return new AccesosDa().Update(acceso);
        }

        public bool UpdateEstadoAcceso(int idAcceso, bool estado)
        {
            return new AccesosDa().UpdateEstado(idAcceso, estado);
        }

        public List<Accesos> GetAccesos()
        {
            return new AccesosDa().GetAll();
        }

        public Accesos GetAcceso(int idAcceso)
        {
            return new AccesosDa().Get(idAcceso);
        }

        public bool DeleteAcceso(int idAcceso)
        {
            return new AccesosDa().Delete(idAcceso);
        }

        #endregion

        #region Categorías

        public CategoriasAcceso InsertCategoria(CategoriasAcceso categoria)
        {
            return new CategoriasAccesoDa().Insert(categoria);
        }

        public CategoriasAcceso UpdateCategoria(CategoriasAcceso categoria)
        {
            return new CategoriasAccesoDa().Update(categoria);
        }

        public bool UpdateEstadoCategoria(int idCategoria, bool estado)
        {
            return new CategoriasAccesoDa().UpdateEstado(idCategoria, estado);
        }

        public List<CategoriasAcceso> GetCategorias()
        {
            return new CategoriasAccesoDa().GetAll();
        }

        public CategoriasAcceso GetCategoria(int idCategoria)
        {
            return new CategoriasAccesoDa().Get(idCategoria);
        }

        public bool DeleteCategoria(int idCategoria)
        {
            return new CategoriasAccesoDa().Delete(idCategoria);
        }

        #endregion
    }
}
