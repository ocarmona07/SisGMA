//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SisGMA.Entidades
{
    using System;
    using System.Collections.Generic;
    
    public partial class ClientesVehiculos
    {
        public int IdClienteVehiculo { get; set; }
        public Nullable<int> IdVehiculo { get; set; }
        public Nullable<int> IdCliente { get; set; }
    
        public virtual Clientes Clientes { get; set; }
        public virtual Vehiculos Vehiculos { get; set; }
    }
}