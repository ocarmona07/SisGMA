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
    
    public partial class VehModelos
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public VehModelos()
        {
            this.VehVehiculos = new HashSet<VehVehiculos>();
        }
    
        public int IdModelo { get; set; }
        public Nullable<int> IdMarca { get; set; }
        public string Modelo { get; set; }
    
        public virtual VehMarcas VehMarcas { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<VehVehiculos> VehVehiculos { get; set; }
    }
}