use SisGMA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Cli_Clientes') and o.name = 'FK_CLI_CLIE_REFERENCE_GEN_COMU')
alter table Cli_Clientes
   drop constraint FK_CLI_CLIE_REFERENCE_GEN_COMU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Ctrl_ControlProduccion') and o.name = 'FK_CTRL_CON_REFERENCE_OP_OPERA')
alter table Ctrl_ControlProduccion
   drop constraint FK_CTRL_CON_REFERENCE_OP_OPERA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Gast_GastosDiarios') and o.name = 'FK_GAST_GAS_REFERENCE_OP_OPERA')
alter table Gast_GastosDiarios
   drop constraint FK_GAST_GAS_REFERENCE_OP_OPERA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Gast_GastosDiarios') and o.name = 'FK_GAST_GAS_REFERENCE_PROV_PRO')
alter table Gast_GastosDiarios
   drop constraint FK_GAST_GAS_REFERENCE_PROV_PRO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Gen_Comunas') and o.name = 'FK_GEN_COMU_REFERENCE_GEN_PROV')
alter table Gen_Comunas
   drop constraint FK_GEN_COMU_REFERENCE_GEN_PROV
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Gen_Provincias') and o.name = 'FK_GEN_PROV_REFERENCE_GEN_REGI')
alter table Gen_Provincias
   drop constraint FK_GEN_PROV_REFERENCE_GEN_REGI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Op_Operarios') and o.name = 'FK_OP_OPERA_REFERENCE_GEN_COMU')
alter table Op_Operarios
   drop constraint FK_OP_OPERA_REFERENCE_GEN_COMU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Op_Operarios') and o.name = 'FK_OP_OPERA_REFERENCE_GEN_ROLE')
alter table Op_Operarios
   drop constraint FK_OP_OPERA_REFERENCE_GEN_ROLE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Prod_Producto') and o.name = 'FK_PROD_PRO_REFERENCE_PROD_SUB')
alter table Prod_Producto
   drop constraint FK_PROD_PRO_REFERENCE_PROD_SUB
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Prod_Producto') and o.name = 'FK_PROD_PRO_REFERENCE_PROD_MAR')
alter table Prod_Producto
   drop constraint FK_PROD_PRO_REFERENCE_PROD_MAR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Prod_Producto') and o.name = 'FK_PROD_PRO_REFERENCE_PROV_PRO')
alter table Prod_Producto
   drop constraint FK_PROD_PRO_REFERENCE_PROV_PRO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Prod_Subcategorias') and o.name = 'FK_PROD_SUB_REFERENCE_PROD_CAT')
alter table Prod_Subcategorias
   drop constraint FK_PROD_SUB_REFERENCE_PROD_CAT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Prov_Proveedores') and o.name = 'FK_PROV_PRO_REFERENCE_GEN_GIRO')
alter table Prov_Proveedores
   drop constraint FK_PROV_PRO_REFERENCE_GEN_GIRO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Veh_Modelos') and o.name = 'FK_VEH_MODE_REFERENCE_VEH_MARC')
alter table Veh_Modelos
   drop constraint FK_VEH_MODE_REFERENCE_VEH_MARC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Veh_Vehiculos') and o.name = 'FK_VEH_VEHI_REFERENCE_VEH_MODE')
alter table Veh_Vehiculos
   drop constraint FK_VEH_VEHI_REFERENCE_VEH_MODE
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Cli_Clientes')
            and   type = 'U')
   drop table Cli_Clientes
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Ctrl_ControlProduccion')
            and   type = 'U')
   drop table Ctrl_ControlProduccion
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Gast_GastosDiarios')
            and   type = 'U')
   drop table Gast_GastosDiarios
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Gen_Comunas')
            and   type = 'U')
   drop table Gen_Comunas
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Gen_Giros')
            and   type = 'U')
   drop table Gen_Giros
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Gen_Provincias')
            and   type = 'U')
   drop table Gen_Provincias
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Gen_Regiones')
            and   type = 'U')
   drop table Gen_Regiones
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Gen_Roles')
            and   type = 'U')
   drop table Gen_Roles
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Op_Operarios')
            and   type = 'U')
   drop table Op_Operarios
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Prod_Categorias')
            and   type = 'U')
   drop table Prod_Categorias
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Prod_Marcas')
            and   type = 'U')
   drop table Prod_Marcas
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Prod_Producto')
            and   type = 'U')
   drop table Prod_Producto
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Prod_Subcategorias')
            and   type = 'U')
   drop table Prod_Subcategorias
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Prov_Proveedores')
            and   type = 'U')
   drop table Prov_Proveedores
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Veh_Marcas')
            and   type = 'U')
   drop table Veh_Marcas
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Veh_Modelos')
            and   type = 'U')
   drop table Veh_Modelos
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Veh_Vehiculos')
            and   type = 'U')
   drop table Veh_Vehiculos
go

/*==============================================================*/
/* Table: Cli_Clientes                                          */
/*==============================================================*/
create table Cli_Clientes (
   IdCliente            int                  identity,
   IdComuna             int                  null,
   RutCliente           nvarchar(10)         not null,
   Nombres              nvarchar(128)        not null,
   ApPaterno            nvarchar(64)         not null,
   ApMaterno            nvarchar(64)         null,
   Direccion            nvarchar(128)        null,
   Telefono             int                  not null,
   Email                nvarchar(128)        null,
   Estado               bit                  not null,
   constraint PK_CLI_CLIENTES primary key (IdCliente)
)
go

/*==============================================================*/
/* Table: Ctrl_ControlProduccion                                */
/*==============================================================*/
create table Ctrl_ControlProduccion (
   IdControlProd        int                  not null,
   IdOperario           int                  null,
   FechaEntrega         date                 not null,
   ValorNeto            money                not null,
   constraint PK_CTRL_CONTROLPRODUCCION primary key (IdControlProd)
)
go

/*==============================================================*/
/* Table: Gast_GastosDiarios                                    */
/*==============================================================*/
create table Gast_GastosDiarios (
   IdGastoDiario        int                  identity,
   IdOperario           int                  null,
   IdProveedor          int                  null,
   FechaIngreso         date                 not null,
   Monto                money                not null,
   Observaciones        nvarchar(Max)        null,
   constraint PK_GAST_GASTOSDIARIOS primary key (IdGastoDiario)
)
go

/*==============================================================*/
/* Table: Gen_Comunas                                           */
/*==============================================================*/
create table Gen_Comunas (
   IdComuna             int                  not null,
   IdProvincia          int                  null,
   Comuna               nvarchar(32)         not null,
   constraint PK_GEN_COMUNAS primary key (IdComuna)
)
go

/*==============================================================*/
/* Table: Gen_Giros                                             */
/*==============================================================*/
create table Gen_Giros (
   IdGiro               int                  identity,
   Codigo               int                  not null,
   Nombre               nvarchar(128)        not null,
   Iva                  int                  null,
   CatTributaria        int                  null,
   Internet             int                  null,
   constraint PK_GEN_GIROS primary key (IdGiro)
)
go

/*==============================================================*/
/* Table: Gen_Provincias                                        */
/*==============================================================*/
create table Gen_Provincias (
   IdProvincia          int                  not null,
   IdRegion             int                  null,
   Provincia            nvarchar(64)         not null,
   constraint PK_GEN_PROVINCIAS primary key (IdProvincia)
)
go

/*==============================================================*/
/* Table: Gen_Regiones                                          */
/*==============================================================*/
create table Gen_Regiones (
   IdRegion             int                  not null,
   Region               nvarchar(64)         not null,
   constraint PK_GEN_REGIONES primary key (IdRegion)
)
go

/*==============================================================*/
/* Table: Gen_Roles                                             */
/*==============================================================*/
create table Gen_Roles (
   IdRol                int                  not null,
   Rol                  nvarchar(32)         not null,
   Estado               bit                  not null,
   constraint PK_GEN_ROLES primary key (IdRol)
)
go

/*==============================================================*/
/* Table: Op_Operarios                                          */
/*==============================================================*/
create table Op_Operarios (
   IdOperario           int                  identity,
   RutOperario          nvarchar(10)         not null,
   Nombres              nvarchar(128)        not null,
   ApPaterno            nvarchar(64)         not null,
   ApMaterno            nvarchar(64)         not null,
   Direccion            nvarchar(128)        null,
   IdComuna             int                  null,
   Telefono             int                  not null,
   IdRol                int                  null,
   Estado               bit                  not null,
   constraint PK_OP_OPERARIOS primary key (IdOperario)
)
go

/*==============================================================*/
/* Table: Prod_Categorias                                       */
/*==============================================================*/
create table Prod_Categorias (
   IdCategoria          int                  identity,
   Categoria            nvarchar(50)         not null,
   Estado               bit                  not null,
   constraint PK_PROD_CATEGORIAS primary key (IdCategoria)
)
go

/*==============================================================*/
/* Table: Prod_Marcas                                           */
/*==============================================================*/
create table Prod_Marcas (
   IdMarca              int                  identity,
   Marca                nvarchar(50)         not null,
   Estado               bit                  not null,
   constraint PK_PROD_MARCAS primary key (IdMarca)
)
go

/*==============================================================*/
/* Table: Prod_Producto                                         */
/*==============================================================*/
create table Prod_Producto (
   IdProducto           int                  identity,
   IdSubcategoria       int                  null,
   IdMarca              int                  null,
   IdProveedor          int                  null,
   Codigo               nvarchar(20)         not null,
   Descripcion          nvarchar(Max)        null,
   ValorIngreso         money                not null,
   ValorSalida          money                not null,
   FechaIngreso         date                 not null,
   Cantidad             int                  not null,
   constraint PK_PROD_PRODUCTO primary key (IdProducto)
)
go

/*==============================================================*/
/* Table: Prod_Subcategorias                                    */
/*==============================================================*/
create table Prod_Subcategorias (
   IdSubcategoria       int                  identity,
   IdCategoria          int                  null,
   Subcategoria         nvarchar(50)         not null,
   Estado               bit                  not null,
   constraint PK_PROD_SUBCATEGORIAS primary key (IdSubcategoria)
)
go

/*==============================================================*/
/* Table: Prov_Proveedores                                      */
/*==============================================================*/
create table Prov_Proveedores (
   IdProveedor          int                  identity,
   IdGiro               int                  null,
   Nombre               nvarchar(256)        not null,
   Telefono             int                  null,
   Observaciones        nvarchar(Max)        null,
   constraint PK_PROV_PROVEEDORES primary key (IdProveedor)
)
go

/*==============================================================*/
/* Table: Veh_Marcas                                            */
/*==============================================================*/
create table Veh_Marcas (
   IdMarca              int                  not null,
   Marca                nvarchar(32)         not null,
   constraint PK_VEH_MARCAS primary key (IdMarca)
)
go

/*==============================================================*/
/* Table: Veh_Modelos                                           */
/*==============================================================*/
create table Veh_Modelos (
   IdModelo             int                  not null,
   IdMarca              int                  null,
   Modelo               nvarchar(32)         not null,
   constraint PK_VEH_MODELOS primary key (IdModelo)
)
go

/*==============================================================*/
/* Table: Veh_Vehiculos                                         */
/*==============================================================*/
create table Veh_Vehiculos (
   IdVehiculo           int                  identity,
   IdModelo             int                  null,
   Patente              nvarchar(8)          not null,
   KmIngreso            int                  not null,
   Anio                 int                  not null,
   Color                nvarchar(16)         null,
   Estanque             int                  not null,
   Observaciones        nvarchar(Max)        null,
   constraint PK_VEH_VEHICULOS primary key (IdVehiculo)
)
go

alter table Cli_Clientes
   add constraint FK_CLI_CLIE_REFERENCE_GEN_COMU foreign key (IdComuna)
      references Gen_Comunas (IdComuna)
go

alter table Ctrl_ControlProduccion
   add constraint FK_CTRL_CON_REFERENCE_OP_OPERA foreign key (IdOperario)
      references Op_Operarios (IdOperario)
go

alter table Gast_GastosDiarios
   add constraint FK_GAST_GAS_REFERENCE_OP_OPERA foreign key (IdOperario)
      references Op_Operarios (IdOperario)
go

alter table Gast_GastosDiarios
   add constraint FK_GAST_GAS_REFERENCE_PROV_PRO foreign key (IdProveedor)
      references Prov_Proveedores (IdProveedor)
go

alter table Gen_Comunas
   add constraint FK_GEN_COMU_REFERENCE_GEN_PROV foreign key (IdProvincia)
      references Gen_Provincias (IdProvincia)
go

alter table Gen_Provincias
   add constraint FK_GEN_PROV_REFERENCE_GEN_REGI foreign key (IdRegion)
      references Gen_Regiones (IdRegion)
go

alter table Op_Operarios
   add constraint FK_OP_OPERA_REFERENCE_GEN_COMU foreign key (IdComuna)
      references Gen_Comunas (IdComuna)
go

alter table Op_Operarios
   add constraint FK_OP_OPERA_REFERENCE_GEN_ROLE foreign key (IdRol)
      references Gen_Roles (IdRol)
go

alter table Prod_Producto
   add constraint FK_PROD_PRO_REFERENCE_PROD_SUB foreign key (IdSubcategoria)
      references Prod_Subcategorias (IdSubcategoria)
go

alter table Prod_Producto
   add constraint FK_PROD_PRO_REFERENCE_PROD_MAR foreign key (IdMarca)
      references Prod_Marcas (IdMarca)
go

alter table Prod_Producto
   add constraint FK_PROD_PRO_REFERENCE_PROV_PRO foreign key (IdProveedor)
      references Prov_Proveedores (IdProveedor)
go

alter table Prod_Subcategorias
   add constraint FK_PROD_SUB_REFERENCE_PROD_CAT foreign key (IdCategoria)
      references Prod_Categorias (IdCategoria)
go

alter table Prov_Proveedores
   add constraint FK_PROV_PRO_REFERENCE_GEN_GIRO foreign key (IdGiro)
      references Gen_Giros (IdGiro)
go

alter table Veh_Modelos
   add constraint FK_VEH_MODE_REFERENCE_VEH_MARC foreign key (IdMarca)
      references Veh_Marcas (IdMarca)
go

alter table Veh_Vehiculos
   add constraint FK_VEH_VEHI_REFERENCE_VEH_MODE foreign key (IdModelo)
      references Veh_Modelos (IdModelo)
go
