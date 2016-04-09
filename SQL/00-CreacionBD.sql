USE SisGMA
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Cli_Clientes')
                    AND o.name = 'FK_CLI_CLIE_REFERENCE_GEN_COMU' )
    ALTER TABLE Cli_Clientes
    DROP CONSTRAINT FK_CLI_CLIE_REFERENCE_GEN_COMU
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Ctrl_ControlProduccion')
                    AND o.name = 'FK_CTRL_CON_REFERENCE_OP_OPERA' )
    ALTER TABLE Ctrl_ControlProduccion
    DROP CONSTRAINT FK_CTRL_CON_REFERENCE_OP_OPERA
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Gast_GastosDiarios')
                    AND o.name = 'FK_GAST_GAS_REFERENCE_OP_OPERA' )
    ALTER TABLE Gast_GastosDiarios
    DROP CONSTRAINT FK_GAST_GAS_REFERENCE_OP_OPERA
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Gast_GastosDiarios')
                    AND o.name = 'FK_GAST_GAS_REFERENCE_PROV_PRO' )
    ALTER TABLE Gast_GastosDiarios
    DROP CONSTRAINT FK_GAST_GAS_REFERENCE_PROV_PRO
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Gen_Comunas')
                    AND o.name = 'FK_GEN_COMU_REFERENCE_GEN_PROV' )
    ALTER TABLE Gen_Comunas
    DROP CONSTRAINT FK_GEN_COMU_REFERENCE_GEN_PROV
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Gen_Provincias')
                    AND o.name = 'FK_GEN_PROV_REFERENCE_GEN_REGI' )
    ALTER TABLE Gen_Provincias
    DROP CONSTRAINT FK_GEN_PROV_REFERENCE_GEN_REGI
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Op_Operarios')
                    AND o.name = 'FK_OP_OPERA_REFERENCE_GEN_COMU' )
    ALTER TABLE Op_Operarios
    DROP CONSTRAINT FK_OP_OPERA_REFERENCE_GEN_COMU
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Op_Operarios')
                    AND o.name = 'FK_OP_OPERA_REFERENCE_GEN_ROLE' )
    ALTER TABLE Op_Operarios
    DROP CONSTRAINT FK_OP_OPERA_REFERENCE_GEN_ROLE
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Prod_Producto')
                    AND o.name = 'FK_PROD_PRO_REFERENCE_PROD_SUB' )
    ALTER TABLE Prod_Producto
    DROP CONSTRAINT FK_PROD_PRO_REFERENCE_PROD_SUB
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Prod_Producto')
                    AND o.name = 'FK_PROD_PRO_REFERENCE_PROD_MAR' )
    ALTER TABLE Prod_Producto
    DROP CONSTRAINT FK_PROD_PRO_REFERENCE_PROD_MAR
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Prod_Producto')
                    AND o.name = 'FK_PROD_PRO_REFERENCE_PROV_PRO' )
    ALTER TABLE Prod_Producto
    DROP CONSTRAINT FK_PROD_PRO_REFERENCE_PROV_PRO
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Prod_Subcategorias')
                    AND o.name = 'FK_PROD_SUB_REFERENCE_PROD_CAT' )
    ALTER TABLE Prod_Subcategorias
    DROP CONSTRAINT FK_PROD_SUB_REFERENCE_PROD_CAT
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Prov_Proveedores')
                    AND o.name = 'FK_PROV_PRO_REFERENCE_GEN_GIRO' )
    ALTER TABLE Prov_Proveedores
    DROP CONSTRAINT FK_PROV_PRO_REFERENCE_GEN_GIRO
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Veh_Modelos')
                    AND o.name = 'FK_VEH_MODE_REFERENCE_VEH_MARC' )
    ALTER TABLE Veh_Modelos
    DROP CONSTRAINT FK_VEH_MODE_REFERENCE_VEH_MARC
GO

IF EXISTS ( SELECT  1
            FROM    sys.sysreferences r
                    JOIN sys.sysobjects o ON ( o.id = r.constid
                                               AND o.type = 'F'
                                             )
            WHERE   r.fkeyid = OBJECT_ID('Veh_Vehiculos')
                    AND o.name = 'FK_VEH_VEHI_REFERENCE_VEH_MODE' )
    ALTER TABLE Veh_Vehiculos
    DROP CONSTRAINT FK_VEH_VEHI_REFERENCE_VEH_MODE
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Cli_Clientes')
                    AND type = 'U' )
    DROP TABLE Cli_Clientes
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Ctrl_ControlProduccion')
                    AND type = 'U' )
    DROP TABLE Ctrl_ControlProduccion
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Gast_GastosDiarios')
                    AND type = 'U' )
    DROP TABLE Gast_GastosDiarios
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Gen_Comunas')
                    AND type = 'U' )
    DROP TABLE Gen_Comunas
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Gen_Giros')
                    AND type = 'U' )
    DROP TABLE Gen_Giros
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Gen_Provincias')
                    AND type = 'U' )
    DROP TABLE Gen_Provincias
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Gen_Regiones')
                    AND type = 'U' )
    DROP TABLE Gen_Regiones
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Gen_Roles')
                    AND type = 'U' )
    DROP TABLE Gen_Roles
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Op_Operarios')
                    AND type = 'U' )
    DROP TABLE Op_Operarios
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Prod_Categorias')
                    AND type = 'U' )
    DROP TABLE Prod_Categorias
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Prod_Marcas')
                    AND type = 'U' )
    DROP TABLE Prod_Marcas
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Prod_Producto')
                    AND type = 'U' )
    DROP TABLE Prod_Producto
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Prod_Subcategorias')
                    AND type = 'U' )
    DROP TABLE Prod_Subcategorias
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Prov_Proveedores')
                    AND type = 'U' )
    DROP TABLE Prov_Proveedores
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Veh_Marcas')
                    AND type = 'U' )
    DROP TABLE Veh_Marcas
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Veh_Modelos')
                    AND type = 'U' )
    DROP TABLE Veh_Modelos
GO

IF EXISTS ( SELECT  1
            FROM    sysobjects
            WHERE   id = OBJECT_ID('Veh_Vehiculos')
                    AND type = 'U' )
    DROP TABLE Veh_Vehiculos
GO

/*==============================================================*/
/* Table: Cli_Clientes                                          */
/*==============================================================*/
CREATE TABLE Cli_Clientes
    (
      IdCliente INT IDENTITY ,
      IdComuna INT NULL ,
      RutCliente NVARCHAR(10) NOT NULL ,
      Nombres NVARCHAR(128) NOT NULL ,
      ApPaterno NVARCHAR(64) NOT NULL ,
      ApMaterno NVARCHAR(64) NULL ,
      Direccion NVARCHAR(128) NULL ,
      Telefono INT NOT NULL ,
      Email NVARCHAR(128) NULL ,
      Estado BIT NOT NULL ,
      CONSTRAINT PK_CLI_CLIENTES PRIMARY KEY ( IdCliente )
    )
GO

/*==============================================================*/
/* Table: Ctrl_ControlProduccion                                */
/*==============================================================*/
CREATE TABLE Ctrl_ControlProduccion
    (
      IdControlProd INT NOT NULL ,
      IdOperario INT NULL ,
      FechaEntrega DATE NOT NULL ,
      ValorNeto MONEY NOT NULL ,
      CONSTRAINT PK_CTRL_CONTROLPRODUCCION PRIMARY KEY ( IdControlProd )
    )
GO

/*==============================================================*/
/* Table: Gast_GastosDiarios                                    */
/*==============================================================*/
CREATE TABLE Gast_GastosDiarios
    (
      IdGastoDiario INT IDENTITY ,
      IdOperario INT NULL ,
      IdProveedor INT NULL ,
      FechaIngreso DATE NOT NULL ,
      Monto MONEY NOT NULL ,
      Observaciones NVARCHAR(MAX) NULL ,
      CONSTRAINT PK_GAST_GASTOSDIARIOS PRIMARY KEY ( IdGastoDiario )
    )
GO

/*==============================================================*/
/* Table: Gen_Comunas                                           */
/*==============================================================*/
CREATE TABLE Gen_Comunas
    (
      IdComuna INT NOT NULL ,
      IdProvincia INT NULL ,
      Comuna NVARCHAR(32) NOT NULL ,
      CONSTRAINT PK_GEN_COMUNAS PRIMARY KEY ( IdComuna )
    )
GO

/*==============================================================*/
/* Table: Gen_Giros                                             */
/*==============================================================*/
CREATE TABLE Gen_Giros
    (
      IdGiro INT IDENTITY ,
      Codigo INT NOT NULL ,
      Nombre NVARCHAR(128) NOT NULL ,
      Iva INT NULL ,
      CatTributaria INT NULL ,
      Internet INT NULL ,
      CONSTRAINT PK_GEN_GIROS PRIMARY KEY ( IdGiro )
    )
GO

/*==============================================================*/
/* Table: Gen_Provincias                                        */
/*==============================================================*/
CREATE TABLE Gen_Provincias
    (
      IdProvincia INT NOT NULL ,
      IdRegion INT NULL ,
      Provincia NVARCHAR(64) NOT NULL ,
      CONSTRAINT PK_GEN_PROVINCIAS PRIMARY KEY ( IdProvincia )
    )
GO

/*==============================================================*/
/* Table: Gen_Regiones                                          */
/*==============================================================*/
CREATE TABLE Gen_Regiones
    (
      IdRegion INT NOT NULL ,
      Region NVARCHAR(64) NOT NULL ,
      CONSTRAINT PK_GEN_REGIONES PRIMARY KEY ( IdRegion )
    )
GO

/*==============================================================*/
/* Table: Gen_Roles                                             */
/*==============================================================*/
CREATE TABLE Gen_Roles
    (
      IdRol INT NOT NULL ,
      Rol NVARCHAR(32) NOT NULL ,
      Estado BIT NOT NULL ,
      CONSTRAINT PK_GEN_ROLES PRIMARY KEY ( IdRol )
    )
GO

/*==============================================================*/
/* Table: Op_Operarios                                          */
/*==============================================================*/
CREATE TABLE Op_Operarios
    (
      IdOperario INT IDENTITY ,
      RutOperario NVARCHAR(10) NOT NULL ,
      Nombres NVARCHAR(128) NOT NULL ,
      ApPaterno NVARCHAR(64) NOT NULL ,
      ApMaterno NVARCHAR(64) NOT NULL ,
      Direccion NVARCHAR(128) NULL ,
      IdComuna INT NULL ,
      Telefono INT NOT NULL ,
      IdRol INT NULL ,
      Estado BIT NOT NULL ,
      CONSTRAINT PK_OP_OPERARIOS PRIMARY KEY ( IdOperario )
    )
GO

/*==============================================================*/
/* Table: Prod_Categorias                                       */
/*==============================================================*/
CREATE TABLE Prod_Categorias
    (
      IdCategoria INT IDENTITY ,
      Categoria NVARCHAR(50) NOT NULL ,
      Estado BIT NOT NULL ,
      CONSTRAINT PK_PROD_CATEGORIAS PRIMARY KEY ( IdCategoria )
    )
GO

/*==============================================================*/
/* Table: Prod_Marcas                                           */
/*==============================================================*/
CREATE TABLE Prod_Marcas
    (
      IdMarca INT IDENTITY ,
      Marca NVARCHAR(50) NOT NULL ,
      Estado BIT NOT NULL ,
      CONSTRAINT PK_PROD_MARCAS PRIMARY KEY ( IdMarca )
    )
GO

/*==============================================================*/
/* Table: Prod_Producto                                         */
/*==============================================================*/
CREATE TABLE Prod_Producto
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
      CONSTRAINT PK_PROD_PRODUCTO PRIMARY KEY ( IdProducto )
    )
GO

/*==============================================================*/
/* Table: Prod_Subcategorias                                    */
/*==============================================================*/
CREATE TABLE Prod_Subcategorias
    (
      IdSubcategoria INT IDENTITY ,
      IdCategoria INT NULL ,
      Subcategoria NVARCHAR(50) NOT NULL ,
      Estado BIT NOT NULL ,
      CONSTRAINT PK_PROD_SUBCATEGORIAS PRIMARY KEY ( IdSubcategoria )
    )
GO

/*==============================================================*/
/* Table: Prov_Proveedores                                      */
/*==============================================================*/
CREATE TABLE Prov_Proveedores
    (
      IdProveedor INT IDENTITY ,
      IdGiro INT NULL ,
      Nombre NVARCHAR(256) NOT NULL ,
      Telefono INT NULL ,
      Observaciones NVARCHAR(MAX) NULL ,
      CONSTRAINT PK_PROV_PROVEEDORES PRIMARY KEY ( IdProveedor )
    )
GO

/*==============================================================*/
/* Table: Veh_Marcas                                            */
/*==============================================================*/
CREATE TABLE Veh_Marcas
    (
      IdMarca INT NOT NULL ,
      Marca NVARCHAR(32) NOT NULL ,
      CONSTRAINT PK_VEH_MARCAS PRIMARY KEY ( IdMarca )
    )
GO

/*==============================================================*/
/* Table: Veh_Modelos                                           */
/*==============================================================*/
CREATE TABLE Veh_Modelos
    (
      IdModelo INT NOT NULL ,
      IdMarca INT NULL ,
      Modelo NVARCHAR(32) NOT NULL ,
      CONSTRAINT PK_VEH_MODELOS PRIMARY KEY ( IdModelo )
    )
GO

/*==============================================================*/
/* Table: Veh_Vehiculos                                         */
/*==============================================================*/
CREATE TABLE Veh_Vehiculos
    (
      IdVehiculo INT IDENTITY ,
      IdModelo INT NULL ,
      Patente NVARCHAR(8) NOT NULL ,
      KmIngreso INT NOT NULL ,
      Anio INT NOT NULL ,
      Color NVARCHAR(16) NULL ,
      Estanque INT NOT NULL ,
      Observaciones NVARCHAR(MAX) NULL ,
      CONSTRAINT PK_VEH_VEHICULOS PRIMARY KEY ( IdVehiculo )
    )
GO

ALTER TABLE Cli_Clientes
ADD CONSTRAINT FK_CLI_CLIE_REFERENCE_GEN_COMU FOREIGN KEY (IdComuna)
REFERENCES Gen_Comunas (IdComuna)
GO

ALTER TABLE Ctrl_ControlProduccion
ADD CONSTRAINT FK_CTRL_CON_REFERENCE_OP_OPERA FOREIGN KEY (IdOperario)
REFERENCES Op_Operarios (IdOperario)
GO

ALTER TABLE Gast_GastosDiarios
ADD CONSTRAINT FK_GAST_GAS_REFERENCE_OP_OPERA FOREIGN KEY (IdOperario)
REFERENCES Op_Operarios (IdOperario)
GO

ALTER TABLE Gast_GastosDiarios
ADD CONSTRAINT FK_GAST_GAS_REFERENCE_PROV_PRO FOREIGN KEY (IdProveedor)
REFERENCES Prov_Proveedores (IdProveedor)
GO

ALTER TABLE Gen_Comunas
ADD CONSTRAINT FK_GEN_COMU_REFERENCE_GEN_PROV FOREIGN KEY (IdProvincia)
REFERENCES Gen_Provincias (IdProvincia)
GO

ALTER TABLE Gen_Provincias
ADD CONSTRAINT FK_GEN_PROV_REFERENCE_GEN_REGI FOREIGN KEY (IdRegion)
REFERENCES Gen_Regiones (IdRegion)
GO

ALTER TABLE Op_Operarios
ADD CONSTRAINT FK_OP_OPERA_REFERENCE_GEN_COMU FOREIGN KEY (IdComuna)
REFERENCES Gen_Comunas (IdComuna)
GO

ALTER TABLE Op_Operarios
ADD CONSTRAINT FK_OP_OPERA_REFERENCE_GEN_ROLE FOREIGN KEY (IdRol)
REFERENCES Gen_Roles (IdRol)
GO

ALTER TABLE Prod_Producto
ADD CONSTRAINT FK_PROD_PRO_REFERENCE_PROD_SUB FOREIGN KEY (IdSubcategoria)
REFERENCES Prod_Subcategorias (IdSubcategoria)
GO

ALTER TABLE Prod_Producto
ADD CONSTRAINT FK_PROD_PRO_REFERENCE_PROD_MAR FOREIGN KEY (IdMarca)
REFERENCES Prod_Marcas (IdMarca)
GO

ALTER TABLE Prod_Producto
ADD CONSTRAINT FK_PROD_PRO_REFERENCE_PROV_PRO FOREIGN KEY (IdProveedor)
REFERENCES Prov_Proveedores (IdProveedor)
GO

ALTER TABLE Prod_Subcategorias
ADD CONSTRAINT FK_PROD_SUB_REFERENCE_PROD_CAT FOREIGN KEY (IdCategoria)
REFERENCES Prod_Categorias (IdCategoria)
GO

ALTER TABLE Prov_Proveedores
ADD CONSTRAINT FK_PROV_PRO_REFERENCE_GEN_GIRO FOREIGN KEY (IdGiro)
REFERENCES Gen_Giros (IdGiro)
GO

ALTER TABLE Veh_Modelos
ADD CONSTRAINT FK_VEH_MODE_REFERENCE_VEH_MARC FOREIGN KEY (IdMarca)
REFERENCES Veh_Marcas (IdMarca)
GO

ALTER TABLE Veh_Vehiculos
ADD CONSTRAINT FK_VEH_VEHI_REFERENCE_VEH_MODE FOREIGN KEY (IdModelo)
REFERENCES Veh_Modelos (IdModelo)
GO
