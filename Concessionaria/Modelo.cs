//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Concessionaria
{
    using System;
    using System.Collections.Generic;
    
    public partial class Modelo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Modelo()
        {
            this.Versaos = new HashSet<Versao>();
        }
    
        public string Descricao { get; set; }
        public Nullable<int> MarcaID { get; set; }
        public int IdModelo { get; set; }
    
        public virtual Marca Marca { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Versao> Versaos { get; set; }
    }
}