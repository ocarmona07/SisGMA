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
    
    public partial class Servicios
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Servicios()
        {
            this.Servicios1 = new HashSet<Servicios>();
        }
    
        public int IdServicio { get; set; }
        public Nullable<int> IdServicioPadre { get; set; }
        public string Codigo { get; set; }
        public string Servicio { get; set; }
        public string Descripcion { get; set; }
        public decimal ValorSalida { get; set; }
        public bool Estado { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Servicios> Servicios1 { get; set; }
        public virtual Servicios Servicios2 { get; set; }
    }
}
