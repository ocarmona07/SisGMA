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
    
    public partial class Gen_Provincias
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Gen_Provincias()
        {
            this.Gen_Comunas = new HashSet<Gen_Comunas>();
        }
    
        public int IdProvincia { get; set; }
        public Nullable<int> IdRegion { get; set; }
        public string Provincia { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Gen_Comunas> Gen_Comunas { get; set; }
        public virtual Gen_Regiones Gen_Regiones { get; set; }
    }
}