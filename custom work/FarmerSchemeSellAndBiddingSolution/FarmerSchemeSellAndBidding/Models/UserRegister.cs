//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FarmerSchemeSellAndBidding.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class UserRegister
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public UserRegister()
        {
            this.RollTypes = new HashSet<RollType>();
        }
    
        public string UserEmailId { get; set; }
        public string password { get; set; }
        public string ContactNo_ { get; set; }
        public string fullname { get; set; }
        public string address1 { get; set; }
        public string address2 { get; set; }
        public string city { get; set; }
        public string state { get; set; }
        public Nullable<int> pincode { get; set; }
        public string pancardDocument { get; set; }
        public string aadharCardDocument { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<RollType> RollTypes { get; set; }
    }
}
