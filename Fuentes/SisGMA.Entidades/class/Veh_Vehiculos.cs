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
    
    public partial class Veh_Vehiculos
    {
        public int IdVehiculo { get; set; }
        public Nullable<int> IdModelo { get; set; }
        public string Patente { get; set; }
        public int KmIngreso { get; set; }
        public int Anio { get; set; }
        public string Color { get; set; }
        public int Estanque { get; set; }
        public string Observaciones { get; set; }
    
        public virtual Veh_Modelos Veh_Modelos { get; set; }
    }
}