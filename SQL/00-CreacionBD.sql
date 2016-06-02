USE SisGMA
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
                    AND o.name = 'FK_PRODUCTO_REFERENCE_SUBCATEG' )
    ALTER TABLE Productos
    DROP CONSTRAINT FK_PRODUCTO_REFERENCE_SUBCATEG
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
            WHERE   r.fkeyid = OBJECT_ID('Subcategorias')
                    AND o.name = 'FK_SUBCATEG_REFERENCE_CATEGORI' )
    ALTER TABLE Subcategorias
    DROP CONSTRAINT FK_SUBCATEG_REFERENCE_CATEGORI
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
            WHERE   id = OBJECT_ID('Categorias')
                    AND type = 'U' )
    DROP TABLE Categorias
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Clientes')
                    AND type = 'U' )
    DROP TABLE Clientes
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
            WHERE   id = OBJECT_ID('Subcategorias')
                    AND type = 'U' )
    DROP TABLE Subcategorias
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Vehiculos')
                    AND type = 'U' )
    DROP TABLE Vehiculos
GO

/*==============================================================*/
/* Table: Categorias                                            */
/*==============================================================*/
CREATE TABLE Categorias
    (
      IdCategoria INT IDENTITY ,
      Categoria NVARCHAR(50) NOT NULL ,
      Estado BIT NOT NULL ,
      CONSTRAINT PK_CATEGORIAS PRIMARY KEY ( IdCategoria )
    )
GO

/*==============================================================*/
/* Table: Clientes                                              */
/*==============================================================*/
CREATE TABLE Clientes
    (
      IdCliente INT IDENTITY ,
      IdComuna INT NULL ,
      RutCliente NVARCHAR(10) NOT NULL ,
      Nombres NVARCHAR(128) NOT NULL ,
      ApPaterno NVARCHAR(64) NOT NULL ,
      ApMaterno NVARCHAR(64) NULL ,
      Direccion NVARCHAR(128) NULL ,
      Telefono NVARCHAR(16) NOT NULL ,
      Email NVARCHAR(128) NULL ,
      Clave NVARCHAR(16) NULL ,
      Estado BIT NOT NULL ,
      CONSTRAINT PK_CLIENTES PRIMARY KEY ( IdCliente )
    )
GO

/*==============================================================*/
/* Table: Comunas                                               */
/*==============================================================*/
CREATE TABLE Comunas
    (
      IdComuna INT NOT NULL ,
      IdProvincia INT NULL ,
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
      IdOperario INT NULL ,
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
      IdOperario INT NULL ,
      IdProveedor INT NULL ,
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
      Marca NVARCHAR(50) NOT NULL ,
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
      IdMarca INT NULL ,
      Modelo NVARCHAR(32) NOT NULL ,
      CONSTRAINT PK_MODELOVEHICULOS PRIMARY KEY ( IdModelo )
    )
GO

/*==============================================================*/
/* Table: Operarios                                             */
/*==============================================================*/
CREATE TABLE Operarios
    (
      IdOperario INT IDENTITY ,
      RutOperario NVARCHAR(10) NOT NULL ,
      Nombres NVARCHAR(128) NOT NULL ,
      ApPaterno NVARCHAR(64) NOT NULL ,
      ApMaterno NVARCHAR(64) NOT NULL ,
      Direccion NVARCHAR(128) NULL ,
      IdComuna INT NULL ,
      Telefono NVARCHAR(16) NULL ,
      Imagen NVARCHAR(MAX) NULL ,
      IdRol INT NULL ,
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
      IdSubcategoria INT NULL ,
      IdMarca INT NULL ,
      IdProveedor INT NULL ,
      Codigo NVARCHAR(20) NOT NULL ,
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
      IdGiro INT NULL ,
      Nombre NVARCHAR(256) NOT NULL ,
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
      IdRegion INT NULL ,
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
/* Table: Subcategorias                                         */
/*==============================================================*/
CREATE TABLE Subcategorias
    (
      IdSubcategoria INT IDENTITY ,
      IdCategoria INT NULL ,
      Subcategoria NVARCHAR(50) NOT NULL ,
      Estado BIT NOT NULL ,
      CONSTRAINT PK_SUBCATEGORIAS PRIMARY KEY ( IdSubcategoria )
    )
GO

/*==============================================================*/
/* Table: Vehiculos                                             */
/*==============================================================*/
CREATE TABLE Vehiculos
    (
      IdVehiculo INT IDENTITY ,
      IdModelo INT NULL ,
      Patente NVARCHAR(8) NOT NULL ,
      KmIngreso INT NOT NULL ,
      Anio INT NOT NULL ,
      Color NVARCHAR(16) NULL ,
      Estanque INT NOT NULL ,
      Observaciones NVARCHAR(MAX) NULL ,
      CONSTRAINT PK_VEHICULOS PRIMARY KEY ( IdVehiculo )
    )
GO

ALTER TABLE Clientes
ADD CONSTRAINT FK_CLIENTES_REFERENCE_COMUNAS FOREIGN KEY (IdComuna)
REFERENCES Comunas (IdComuna)
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

ALTER TABLE Operarios
ADD CONSTRAINT FK_OPERARIO_REFERENCE_COMUNAS FOREIGN KEY (IdComuna)
REFERENCES Comunas (IdComuna)
GO

ALTER TABLE Operarios
ADD CONSTRAINT FK_OPERARIO_REFERENCE_ROLES FOREIGN KEY (IdRol)
REFERENCES Roles (IdRol)
GO

ALTER TABLE Productos
ADD CONSTRAINT FK_PRODUCTO_REFERENCE_SUBCATEG FOREIGN KEY (IdSubcategoria)
REFERENCES Subcategorias (IdSubcategoria)
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

ALTER TABLE Subcategorias
ADD CONSTRAINT FK_SUBCATEG_REFERENCE_CATEGORI FOREIGN KEY (IdCategoria)
REFERENCES Categorias (IdCategoria)
GO

ALTER TABLE Vehiculos
ADD CONSTRAINT FK_VEHICULO_REFERENCE_MODELOVE FOREIGN KEY (IdModelo)
REFERENCES ModeloVehiculos (IdModelo)
GO
