namespace SisGMA.Negocio.InventarioBo
{
    using System.Collections.Generic;
    using Entidades;
    using Entidades.Common;
    using Datos.InventarioDa;

    public class InventarioBo : BaseEntity
    {
        #region Categorías de Productos

        public CategoriasProductos InsertCategoria(CategoriasProductos categoria)
        {
            return new CategoriasProductosDa().Insert(categoria);
        }

        public CategoriasProductos UpdateCategoria(CategoriasProductos categoria)
        {
            return new CategoriasProductosDa().Update(categoria);
        }

        public bool UpdateEstadoCategoria(int idCategoria, bool estado)
        {
            return new CategoriasProductosDa().UpdateEstado(idCategoria, estado);
        }

        public List<CategoriasProductos> GetCategorias()
        {
            return new CategoriasProductosDa().GetAll();
        }

        public CategoriasProductos GetCategoria(int idCategoria)
        {
            return new CategoriasProductosDa().Get(idCategoria);
        }

        public bool DeleteCategoria(int idCategoria)
        {
            return new CategoriasProductosDa().Delete(idCategoria);
        }

        #endregion

        #region Marcas

        public MarcaProductos InsertMarca(MarcaProductos marca)
        {
            return new MarcaProductosDa().Insert(marca);
        }

        public MarcaProductos UpdateMarca(MarcaProductos marca)
        {
            return new MarcaProductosDa().Update(marca);
        }

        public bool UpdateEstadoMarca(int idMarca, bool estado)
        {
            return new MarcaProductosDa().UpdateEstado(idMarca, estado);
        }

        public List<MarcaProductos> GetMarcas()
        {
            return new MarcaProductosDa().GetAll();
        }

        public MarcaProductos GetMarca(int idMarca)
        {
            return new MarcaProductosDa().Get(idMarca);
        }

        public bool DeleteMarca(int idMarca)
        {
            return new MarcaProductosDa().Delete(idMarca);
        }

        #endregion
    }
}
