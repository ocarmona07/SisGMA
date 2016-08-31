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

        #region Productos

        public Productos InsertProducto(Productos producto)
        {
            IsValid = true;
            return new ProductosDa().Insert(producto);
        }

        public Productos UpdateProducto(Productos producto)
        {
            IsValid = true;
            return new ProductosDa().Update(producto);
        }

        public bool UpdateCantidadProducto(int idProducto, int cantidad)
        {
            IsValid = true;
            return new ProductosDa().UpdateCantidad(idProducto, cantidad);
        }

        public List<Productos> GetProductos()
        {
            IsValid = true;
            return new ProductosDa().GetAll();
        }

        public Productos GetProducto(int idProducto)
        {
            IsValid = true;
            return new ProductosDa().Get(idProducto);
        }

        public bool DeleteProducto(int idProducto)
        {
            IsValid = true;
            return new ProductosDa().Delete(idProducto);
        }

        #endregion

        #region Servicios

        public Servicios InsertServicio(Servicios servicio)
        {
            return new ServiciosDa().Insert(servicio);
        }

        public Servicios UpdateServicio(Servicios servicio)
        {
            return new ServiciosDa().Update(servicio);
        }

        public bool UpdateEstadoServicio(int idServicio, bool estado)
        {
            return new ServiciosDa().UpdateEstado(idServicio, estado);
        }

        public List<Servicios> GetServicios()
        {
            return new ServiciosDa().GetAll();
        }

        public Servicios GetServicio(int idServicio)
        {
            return new ServiciosDa().Get(idServicio);
        }

        public bool DeleteServicio(int idServicio)
        {
            return new ServiciosDa().Delete(idServicio);
        }

        #endregion
    }
}
