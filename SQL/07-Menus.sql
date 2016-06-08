USE SisGMA;

-- Categorías
INSERT  INTO dbo.CategoriasAcceso
        ( IdCategoriaAcceso, Categoria, Estado )
VALUES  ( 1, N'MENÚ PRINCIPAL', 1 ),
        ( 2, N'MANTENEDORES', 1 )
GO

-- Accesos
INSERT  INTO dbo.Accesos
        ( IdAcceso, IdAccesoPadre, IdCategoriaAcceso, NombreAcceso,
          Descripcion, Icono, UrlAcceso, Estado )
VALUES  ( 1, NULL, 1, N'Inicio', N'Inicio', N'fa-home', N'/Inicio.aspx', 1 ),
        ( 2, NULL, 1, N'Inventario', N'Acceso a productos y servicios',
          N'fa-book', N'#', 1 ),
        ( 3, 2, 1, N'Productos', N'Productos disponibles', N'fa-dropbox',
          N'/Productos.aspx', 1 ),
        ( 4, 2, 1, N'Servicios', N'Servicios ofrecidos', N'fa-wrench',
          N'/Servicios.aspx', 1 ),
        ( 10, NULL, 1, N'Presupuestos', N'Cotizaciones', N'fa-file-text', N'#',
          1 ),
        ( 11, 10, 1, N'Nuevo Presupuesto', N'Crear un nuevo presupuesto',
          N'fa-file-text-o', N'/NuevoPresupuesto.aspx', 1 ),
        ( 12, 10, 1, N'Listar Presupuestos',
          N'Listado de cotizaciones realizadas', N'fa-list-alt',
          N'/ListarPresupuestos.aspx', 1 ),
        ( 20, NULL, 1, N'Ventas', N'Venta de productos o servicios', N'fa-car',
          N'#', 1 ),
        ( 21, 20, 1, N'Nueva Venta', N'Realizar una nueva venta', N'fa-dollar',
          N'/NuevaVenta.aspx', 1 ),
        ( 22, 20, 1, N'Listar Ventas', N'Listado de ventas realizadas',
          N'fa-line-chart', N'/ListarVentas.aspx', 1 ),
        ( 30, NULL, 2, N'Operadores', N'Administración de operadores',
          N'fa-users', N'/Mantenedores/Operadores.aspx', 1 ),
        ( 40, NULL, 2, N'Clientes', N'Administración de clientes', N'fa-child',
          N'/Mantenedores/Clientes.aspx', 1 ),
        ( 50, NULL, 2, N'Proveedores', N'Administración de proveedores',
          N'fa-truck', N'/Mantenedores/Proveedores.aspx', 1 ),
        ( 60, NULL, 2, N'Inventario', N'Administración de inventario',
          N'fa-tags', N'/Mantenedores/Inventario.aspx', 1 ),
        ( 70, NULL, 2, N'Accesos', N'Administración de accesos',
          N'fa-share-square', N'/Mantenedores/Accesos.aspx', 1 )
GO
