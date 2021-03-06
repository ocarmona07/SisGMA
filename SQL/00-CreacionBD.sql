USE SisGMA;

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Accesos')
                    AND o.name = 'FK_ACCESOS_REFERENCE_ACCESOS' )
    ALTER TABLE Accesos
    DROP CONSTRAINT FK_ACCESOS_REFERENCE_ACCESOS
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Accesos')
                    AND o.name = 'FK_ACCESOS_REFERENCE_CATEGORI' )
    ALTER TABLE Accesos
    DROP CONSTRAINT FK_ACCESOS_REFERENCE_CATEGORI
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('CategoriasProductos')
                    AND o.name = 'FK_CATEGORI_REFERENCE_CATEGORI' )
    ALTER TABLE CategoriasProductos
    DROP CONSTRAINT FK_CATEGORI_REFERENCE_CATEGORI
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Clientes')
                    AND o.name = 'FK_CLIENTES_REFERENCE_COMUNAS' )
    ALTER TABLE Clientes
    DROP CONSTRAINT FK_CLIENTES_REFERENCE_COMUNAS
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('ClientesVehiculos')
                    AND o.name = 'FK_CLIENTES_REFERENCE_VEHICULO' )
    ALTER TABLE ClientesVehiculos
    DROP CONSTRAINT FK_CLIENTES_REFERENCE_VEHICULO
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('ClientesVehiculos')
                    AND o.name = 'FK_CLIENTES_REFERENCE_CLIENTES' )
    ALTER TABLE ClientesVehiculos
    DROP CONSTRAINT FK_CLIENTES_REFERENCE_CLIENTES
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Comunas')
                    AND o.name = 'FK_COMUNAS_REFERENCE_PROVINCI' )
    ALTER TABLE Comunas
    DROP CONSTRAINT FK_COMUNAS_REFERENCE_PROVINCI
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('ControlProduccion')
                    AND o.name = 'FK_CONTROLP_REFERENCE_OPERARIO' )
    ALTER TABLE ControlProduccion
    DROP CONSTRAINT FK_CONTROLP_REFERENCE_OPERARIO
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('GastosDiarios')
                    AND o.name = 'FK_GASTOSDI_REFERENCE_OPERARIO' )
    ALTER TABLE GastosDiarios
    DROP CONSTRAINT FK_GASTOSDI_REFERENCE_OPERARIO
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('GastosDiarios')
                    AND o.name = 'FK_GASTOSDI_REFERENCE_PROVEEDO' )
    ALTER TABLE GastosDiarios
    DROP CONSTRAINT FK_GASTOSDI_REFERENCE_PROVEEDO
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('ModeloVehiculos')
                    AND o.name = 'FK_MODELOVE_REFERENCE_MARCAVEH' )
    ALTER TABLE ModeloVehiculos
    DROP CONSTRAINT FK_MODELOVE_REFERENCE_MARCAVEH
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Notificaciones')
                    AND o.name = 'FK_NOTIFICA_REFERENCE_OPERARIO' )
    ALTER TABLE Notificaciones
    DROP CONSTRAINT FK_NOTIFICA_REFERENCE_OPERARIO
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Notificaciones')
                    AND o.name = 'FK_NOTIFICA_REFERENCE_NIVELNOT' )
    ALTER TABLE Notificaciones
    DROP CONSTRAINT FK_NOTIFICA_REFERENCE_NIVELNOT
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Operarios')
                    AND o.name = 'FK_OPERARIO_REFERENCE_COMUNAS' )
    ALTER TABLE Operarios
    DROP CONSTRAINT FK_OPERARIO_REFERENCE_COMUNAS
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Operarios')
                    AND o.name = 'FK_OPERARIO_REFERENCE_ROLES' )
    ALTER TABLE Operarios
    DROP CONSTRAINT FK_OPERARIO_REFERENCE_ROLES
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Productos')
                    AND o.name = 'FK_PRODUCTO_REFERENCE_CATEGORI' )
    ALTER TABLE Productos
    DROP CONSTRAINT FK_PRODUCTO_REFERENCE_CATEGORI
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Productos')
                    AND o.name = 'FK_PRODUCTO_REFERENCE_MARCAPRO' )
    ALTER TABLE Productos
    DROP CONSTRAINT FK_PRODUCTO_REFERENCE_MARCAPRO
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Productos')
                    AND o.name = 'FK_PRODUCTO_REFERENCE_PROVEEDO' )
    ALTER TABLE Productos
    DROP CONSTRAINT FK_PRODUCTO_REFERENCE_PROVEEDO
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Proveedores')
                    AND o.name = 'FK_PROVEEDO_REFERENCE_GIROS' )
    ALTER TABLE Proveedores
    DROP CONSTRAINT FK_PROVEEDO_REFERENCE_GIROS
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Provincias')
                    AND o.name = 'FK_PROVINCI_REFERENCE_REGIONES' )
    ALTER TABLE Provincias
    DROP CONSTRAINT FK_PROVINCI_REFERENCE_REGIONES
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('RolesAccesos')
                    AND o.name = 'FK_ROLESACC_REFERENCE_ROLES' )
    ALTER TABLE RolesAccesos
    DROP CONSTRAINT FK_ROLESACC_REFERENCE_ROLES
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('RolesAccesos')
                    AND o.name = 'FK_ROLESACC_REFERENCE_ACCESOS' )
    ALTER TABLE RolesAccesos
    DROP CONSTRAINT FK_ROLESACC_REFERENCE_ACCESOS
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Servicios')
                    AND o.name = 'FK_SERVICIO_REFERENCE_SERVICIO' )
    ALTER TABLE Servicios
    DROP CONSTRAINT FK_SERVICIO_REFERENCE_SERVICIO
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Vehiculos')
                    AND o.name = 'FK_VEHICULO_REFERENCE_MODELOVE' )
    ALTER TABLE Vehiculos
    DROP CONSTRAINT FK_VEHICULO_REFERENCE_MODELOVE
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Accesos')
                    AND type = 'U' )
    DROP TABLE Accesos
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('CategoriasAcceso')
                    AND type = 'U' )
    DROP TABLE CategoriasAcceso
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('CategoriasProductos')
                    AND type = 'U' )
    DROP TABLE CategoriasProductos
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Clientes')
                    AND type = 'U' )
    DROP TABLE Clientes
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('ClientesVehiculos')
                    AND type = 'U' )
    DROP TABLE ClientesVehiculos
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Comunas')
                    AND type = 'U' )
    DROP TABLE Comunas
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('ControlProduccion')
                    AND type = 'U' )
    DROP TABLE ControlProduccion
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('GastosDiarios')
                    AND type = 'U' )
    DROP TABLE GastosDiarios
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Giros')
                    AND type = 'U' )
    DROP TABLE Giros
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('MarcaProductos')
                    AND type = 'U' )
    DROP TABLE MarcaProductos
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('MarcaVehiculos')
                    AND type = 'U' )
    DROP TABLE MarcaVehiculos
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('ModeloVehiculos')
                    AND type = 'U' )
    DROP TABLE ModeloVehiculos
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('NivelNotificacion')
                    AND type = 'U' )
    DROP TABLE NivelNotificacion
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Notificaciones')
                    AND type = 'U' )
    DROP TABLE Notificaciones
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Operarios')
                    AND type = 'U' )
    DROP TABLE Operarios
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Productos')
                    AND type = 'U' )
    DROP TABLE Productos
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Proveedores')
                    AND type = 'U' )
    DROP TABLE Proveedores
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Provincias')
                    AND type = 'U' )
    DROP TABLE Provincias
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Regiones')
                    AND type = 'U' )
    DROP TABLE Regiones
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Roles')
                    AND type = 'U' )
    DROP TABLE Roles
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('RolesAccesos')
                    AND type = 'U' )
    DROP TABLE RolesAccesos
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Servicios')
                    AND type = 'U' )
    DROP TABLE Servicios
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Vehiculos')
                    AND type = 'U' )
    DROP TABLE Vehiculos
GO

/*==============================================================*/
/* Table: Accesos                                               */
/*==============================================================*/
CREATE TABLE Accesos
    (
      IdAcceso INT NOT NULL ,
      IdAccesoPadre INT NULL ,
      IdCategoriaAcceso INT NOT NULL ,
      NombreAcceso NVARCHAR(32) NOT NULL ,
      Descripcion NVARCHAR(256) NULL ,
      Icono NVARCHAR(32) NULL ,
      UrlAcceso NVARCHAR(512) NULL ,
      Estado BIT NOT NULL ,
      CONSTRAINT PK_ACCESOS PRIMARY KEY ( IdAcceso )
    )
GO

/*==============================================================*/
/* Table: CategoriasAcceso                                      */
/*==============================================================*/
CREATE TABLE CategoriasAcceso
    (
      IdCategoriaAcceso INT NOT NULL ,
      Categoria NVARCHAR(32) NOT NULL ,
      Estado BIT NOT NULL ,
      CONSTRAINT PK_CATEGORIASACCESO PRIMARY KEY ( IdCategoriaAcceso )
    )
GO

/*==============================================================*/
/* Table: CategoriasProductos                                   */
/*==============================================================*/
CREATE TABLE CategoriasProductos
    (
      IdCategoria INT IDENTITY ,
      IdCategoriaPadre INT NULL ,
      Codigo VARCHAR(16) NOT NULL ,
      Categoria NVARCHAR(32) NOT NULL ,
      Icono VARCHAR(32) NULL ,
      Estado BIT NOT NULL ,
      CONSTRAINT PK_CATEGORIASPRODUCTOS PRIMARY KEY ( IdCategoria )
    )
GO

/*==============================================================*/
/* Table: Clientes                                              */
/*==============================================================*/
CREATE TABLE Clientes
    (
      IdCliente INT IDENTITY ,
      RutCliente NVARCHAR(10) NOT NULL ,
      Nombres NVARCHAR(32) NOT NULL ,
      ApPaterno NVARCHAR(32) NOT NULL ,
      ApMaterno NVARCHAR(32) NULL ,
      Direccion NVARCHAR(64) NULL ,
      IdComuna INT NOT NULL ,
      Telefono NVARCHAR(16) NOT NULL ,
      Email NVARCHAR(64) NULL ,
      Clave NVARCHAR(16) NULL ,
      Estado BIT NOT NULL ,
      CONSTRAINT PK_CLIENTES PRIMARY KEY ( IdCliente )
    )
GO

/*==============================================================*/
/* Table: ClientesVehiculos                                     */
/*==============================================================*/
CREATE TABLE ClientesVehiculos
    (
      IdClienteVehiculo INT NOT NULL ,
      IdVehiculo INT NOT NULL ,
      IdCliente INT NOT NULL ,
      CONSTRAINT PK_CLIENTESVEHICULOS PRIMARY KEY ( IdClienteVehiculo )
    )
GO

/*==============================================================*/
/* Table: Comunas                                               */
/*==============================================================*/
CREATE TABLE Comunas
    (
      IdComuna INT NOT NULL ,
      IdProvincia INT NOT NULL ,
      Comuna NVARCHAR(32) NOT NULL ,
      CONSTRAINT PK_COMUNAS PRIMARY KEY ( IdComuna )
    )
GO

/*==============================================================*/
/* Table: ControlProduccion                                     */
/*==============================================================*/
CREATE TABLE ControlProduccion
    (
      IdControlProd INT NOT NULL ,
      IdOperario INT NOT NULL ,
      FechaEntrega DATE NOT NULL ,
      ValorNeto MONEY NOT NULL ,
      CONSTRAINT PK_CONTROLPRODUCCION PRIMARY KEY ( IdControlProd )
    )
GO

/*==============================================================*/
/* Table: GastosDiarios                                         */
/*==============================================================*/
CREATE TABLE GastosDiarios
    (
      IdGastoDiario INT IDENTITY ,
      IdOperario INT NOT NULL ,
      IdProveedor INT NOT NULL ,
      FechaIngreso DATE NOT NULL ,
      Monto MONEY NOT NULL ,
      Observaciones NVARCHAR(MAX) NULL ,
      CONSTRAINT PK_GASTOSDIARIOS PRIMARY KEY ( IdGastoDiario )
    )
GO

/*==============================================================*/
/* Table: Giros                                                 */
/*==============================================================*/
CREATE TABLE Giros
    (
      IdGiro INT IDENTITY ,
      Codigo INT NOT NULL ,
      Nombre NVARCHAR(128) NOT NULL ,
      Iva INT NULL ,
      CatTributaria INT NULL ,
      Internet INT NULL ,
      CONSTRAINT PK_GIROS PRIMARY KEY ( IdGiro )
    )
GO

/*==============================================================*/
/* Table: MarcaProductos                                        */
/*==============================================================*/
CREATE TABLE MarcaProductos
    (
      IdMarca INT IDENTITY ,
      Marca NVARCHAR(32) NOT NULL ,
      Estado BIT NOT NULL ,
      CONSTRAINT PK_MARCAPRODUCTOS PRIMARY KEY ( IdMarca )
    )
GO

/*==============================================================*/
/* Table: MarcaVehiculos                                        */
/*==============================================================*/
CREATE TABLE MarcaVehiculos
    (
      IdMarca INT NOT NULL ,
      Marca NVARCHAR(32) NOT NULL ,
      CONSTRAINT PK_MARCAVEHICULOS PRIMARY KEY ( IdMarca )
    )
GO

/*==============================================================*/
/* Table: ModeloVehiculos                                       */
/*==============================================================*/
CREATE TABLE ModeloVehiculos
    (
      IdModelo INT NOT NULL ,
      IdMarca INT NOT NULL ,
      Modelo NVARCHAR(32) NOT NULL ,
      CONSTRAINT PK_MODELOVEHICULOS PRIMARY KEY ( IdModelo )
    )
GO

/*==============================================================*/
/* Table: NivelNotificacion                                     */
/*==============================================================*/
CREATE TABLE NivelNotificacion
    (
      IdNivel INT NOT NULL ,
      Nivel NVARCHAR(32) NOT NULL ,
      CONSTRAINT PK_NIVELNOTIFICACION PRIMARY KEY ( IdNivel )
    )
GO

/*==============================================================*/
/* Table: Notificaciones                                        */
/*==============================================================*/
CREATE TABLE Notificaciones
    (
      IdNotificacion INT IDENTITY ,
      IdOperario INT NOT NULL ,
      TituloNotificacion NVARCHAR(128) NOT NULL ,
      Descripcion NVARCHAR(MAX) NULL ,
      Color NVARCHAR(16) NOT NULL ,
      Icono NVARCHAR(32) NULL ,
      IdNivel INT NOT NULL ,
      FechaHora DATETIME NOT NULL ,
      Estado BIT NOT NULL ,
      CONSTRAINT PK_NOTIFICACIONES PRIMARY KEY ( IdNotificacion )
    )
GO

/*==============================================================*/
/* Table: Operarios                                             */
/*==============================================================*/
CREATE TABLE Operarios
    (
      IdOperario INT IDENTITY ,
      RutOperario NVARCHAR(10) NOT NULL ,
      Nombres NVARCHAR(32) NOT NULL ,
      ApPaterno NVARCHAR(32) NOT NULL ,
      ApMaterno NVARCHAR(32) NOT NULL ,
      Direccion NVARCHAR(64) NULL ,
      IdComuna INT NOT NULL ,
      Telefono NVARCHAR(16) NULL ,
      Imagen NVARCHAR(MAX) NULL ,
      IdRol INT NOT NULL ,
      Clave NVARCHAR(16) NOT NULL ,
      Estado BIT NOT NULL ,
      CONSTRAINT PK_OPERARIOS PRIMARY KEY ( IdOperario )
    )
GO

/*==============================================================*/
/* Table: Productos                                             */
/*==============================================================*/
CREATE TABLE Productos
    (
      IdProducto INT IDENTITY ,
      IdCategoria INT NOT NULL ,
      IdMarca INT NOT NULL ,
      IdProveedor INT NULL ,
      Codigo NVARCHAR(32) NOT NULL ,
      Descripcion NVARCHAR(MAX) NULL ,
      ValorIngreso MONEY NOT NULL ,
      ValorSalida MONEY NOT NULL ,
      FechaIngreso DATE NOT NULL ,
      Cantidad INT NOT NULL ,
      CONSTRAINT PK_PRODUCTOS PRIMARY KEY ( IdProducto )
    )
GO

/*==============================================================*/
/* Table: Proveedores                                           */
/*==============================================================*/
CREATE TABLE Proveedores
    (
      IdProveedor INT IDENTITY ,
      IdGiro INT NOT NULL ,
      Nombre NVARCHAR(128) NOT NULL ,
      Telefono INT NULL ,
      Observaciones NVARCHAR(MAX) NULL ,
      CONSTRAINT PK_PROVEEDORES PRIMARY KEY ( IdProveedor )
    )
GO

/*==============================================================*/
/* Table: Provincias                                            */
/*==============================================================*/
CREATE TABLE Provincias
    (
      IdProvincia INT NOT NULL ,
      IdRegion INT NOT NULL ,
      Provincia NVARCHAR(64) NOT NULL ,
      CONSTRAINT PK_PROVINCIAS PRIMARY KEY ( IdProvincia )
    )
GO

/*==============================================================*/
/* Table: Regiones                                              */
/*==============================================================*/
CREATE TABLE Regiones
    (
      IdRegion INT NOT NULL ,
      Region NVARCHAR(64) NOT NULL ,
      CONSTRAINT PK_REGIONES PRIMARY KEY ( IdRegion )
    )
GO

/*==============================================================*/
/* Table: Roles                                                 */
/*==============================================================*/
CREATE TABLE Roles
    (
      IdRol INT NOT NULL ,
      Rol NVARCHAR(32) NOT NULL ,
      Estado BIT NOT NULL ,
      CONSTRAINT PK_ROLES PRIMARY KEY ( IdRol )
    )
GO

/*==============================================================*/
/* Table: RolesAccesos                                          */
/*==============================================================*/
CREATE TABLE RolesAccesos
    (
      IdRolAcceso INT NOT NULL ,
      IdRol INT NOT NULL ,
      IdAcceso INT NOT NULL ,
      CONSTRAINT PK_ROLESACCESOS PRIMARY KEY ( IdRolAcceso )
    )
GO

/*==============================================================*/
/* Table: Servicios                                             */
/*==============================================================*/
CREATE TABLE Servicios
    (
      IdServicio INT IDENTITY ,
      IdServicioPadre INT NULL ,
      Codigo NVARCHAR(16) NOT NULL ,
      Servicio NVARCHAR(64) NOT NULL ,
      Descripcion NVARCHAR(MAX) NULL ,
      ValorSalida MONEY NOT NULL ,
      Estado BIT NOT NULL ,
      CONSTRAINT PK_SERVICIOS PRIMARY KEY ( IdServicio )
    )
GO

/*==============================================================*/
/* Table: Vehiculos                                             */
/*==============================================================*/
CREATE TABLE Vehiculos
    (
      IdVehiculo INT IDENTITY ,
      IdModelo INT NOT NULL ,
      Patente NVARCHAR(8) NOT NULL ,
      KmIngreso INT NOT NULL ,
      Anio INT NOT NULL ,
      Color NVARCHAR(16) NULL ,
      Estanque INT NOT NULL ,
      Observaciones NVARCHAR(MAX) NULL ,
      CONSTRAINT PK_VEHICULOS PRIMARY KEY ( IdVehiculo )
    )
GO

ALTER TABLE Accesos
ADD CONSTRAINT FK_ACCESOS_REFERENCE_ACCESOS FOREIGN KEY (IdAccesoPadre)
REFERENCES Accesos (IdAcceso)
GO

ALTER TABLE Accesos
ADD CONSTRAINT FK_ACCESOS_REFERENCE_CATEGORI FOREIGN KEY (IdCategoriaAcceso)
REFERENCES CategoriasAcceso (IdCategoriaAcceso)
GO

ALTER TABLE CategoriasProductos
ADD CONSTRAINT FK_CATEGORI_REFERENCE_CATEGORI FOREIGN KEY (IdCategoriaPadre)
REFERENCES CategoriasProductos (IdCategoria)
GO

ALTER TABLE Clientes
ADD CONSTRAINT FK_CLIENTES_REFERENCE_COMUNAS FOREIGN KEY (IdComuna)
REFERENCES Comunas (IdComuna)
GO

ALTER TABLE ClientesVehiculos
ADD CONSTRAINT FK_CLIENTES_REFERENCE_VEHICULO FOREIGN KEY (IdVehiculo)
REFERENCES Vehiculos (IdVehiculo)
GO

ALTER TABLE ClientesVehiculos
ADD CONSTRAINT FK_CLIENTES_REFERENCE_CLIENTES FOREIGN KEY (IdCliente)
REFERENCES Clientes (IdCliente)
GO

ALTER TABLE Comunas
ADD CONSTRAINT FK_COMUNAS_REFERENCE_PROVINCI FOREIGN KEY (IdProvincia)
REFERENCES Provincias (IdProvincia)
GO

ALTER TABLE ControlProduccion
ADD CONSTRAINT FK_CONTROLP_REFERENCE_OPERARIO FOREIGN KEY (IdOperario)
REFERENCES Operarios (IdOperario)
GO

ALTER TABLE GastosDiarios
ADD CONSTRAINT FK_GASTOSDI_REFERENCE_OPERARIO FOREIGN KEY (IdOperario)
REFERENCES Operarios (IdOperario)
GO

ALTER TABLE GastosDiarios
ADD CONSTRAINT FK_GASTOSDI_REFERENCE_PROVEEDO FOREIGN KEY (IdProveedor)
REFERENCES Proveedores (IdProveedor)
GO

ALTER TABLE ModeloVehiculos
ADD CONSTRAINT FK_MODELOVE_REFERENCE_MARCAVEH FOREIGN KEY (IdMarca)
REFERENCES MarcaVehiculos (IdMarca)
GO

ALTER TABLE Notificaciones
ADD CONSTRAINT FK_NOTIFICA_REFERENCE_OPERARIO FOREIGN KEY (IdOperario)
REFERENCES Operarios (IdOperario)
GO

ALTER TABLE Notificaciones
ADD CONSTRAINT FK_NOTIFICA_REFERENCE_NIVELNOT FOREIGN KEY (IdNivel)
REFERENCES NivelNotificacion (IdNivel)
GO

ALTER TABLE Operarios
ADD CONSTRAINT FK_OPERARIO_REFERENCE_COMUNAS FOREIGN KEY (IdComuna)
REFERENCES Comunas (IdComuna)
GO

ALTER TABLE Operarios
ADD CONSTRAINT FK_OPERARIO_REFERENCE_ROLES FOREIGN KEY (IdRol)
REFERENCES Roles (IdRol)
GO

ALTER TABLE Productos
ADD CONSTRAINT FK_PRODUCTO_REFERENCE_CATEGORI FOREIGN KEY (IdCategoria)
REFERENCES CategoriasProductos (IdCategoria)
GO

ALTER TABLE Productos
ADD CONSTRAINT FK_PRODUCTO_REFERENCE_MARCAPRO FOREIGN KEY (IdMarca)
REFERENCES MarcaProductos (IdMarca)
GO

ALTER TABLE Productos
ADD CONSTRAINT FK_PRODUCTO_REFERENCE_PROVEEDO FOREIGN KEY (IdProveedor)
REFERENCES Proveedores (IdProveedor)
GO

ALTER TABLE Proveedores
ADD CONSTRAINT FK_PROVEEDO_REFERENCE_GIROS FOREIGN KEY (IdGiro)
REFERENCES Giros (IdGiro)
GO

ALTER TABLE Provincias
ADD CONSTRAINT FK_PROVINCI_REFERENCE_REGIONES FOREIGN KEY (IdRegion)
REFERENCES Regiones (IdRegion)
GO

ALTER TABLE RolesAccesos
ADD CONSTRAINT FK_ROLESACC_REFERENCE_ROLES FOREIGN KEY (IdRol)
REFERENCES Roles (IdRol)
GO

ALTER TABLE RolesAccesos
ADD CONSTRAINT FK_ROLESACC_REFERENCE_ACCESOS FOREIGN KEY (IdAcceso)
REFERENCES Accesos (IdAcceso)
GO

ALTER TABLE Servicios
ADD CONSTRAINT FK_SERVICIO_REFERENCE_SERVICIO FOREIGN KEY (IdServicioPadre)
REFERENCES Servicios (IdServicio)
GO

ALTER TABLE Vehiculos
ADD CONSTRAINT FK_VEHICULO_REFERENCE_MODELOVE FOREIGN KEY (IdModelo)
REFERENCES ModeloVehiculos (IdModelo)
GO
