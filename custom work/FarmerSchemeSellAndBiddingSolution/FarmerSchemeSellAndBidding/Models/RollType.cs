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
    
    public partial class RollType
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public RollType()
        {
            this.BankDetails = new HashSet<BankDetail>();
            this.BiddingTables = new HashSet<BiddingTable>();
            this.FarmerCropdetils = new HashSet<FarmerCropdetil>();
            this.FarmerLands = new HashSet<FarmerLand>();
            this.InsuranceApplications = new HashSet<InsuranceApplication>();
        }
    
        public int UserID { get; set; }
        public string RollType1 { get; set; }
        public string certificate { get; set; }
        public Nullable<bool> ApprovedStatus { get; set; }
        public string UserEmailId { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BankDetail> BankDetails { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BiddingTable> BiddingTables { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FarmerCropdetil> FarmerCropdetils { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FarmerLand> FarmerLands { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<InsuranceApplication> InsuranceApplications { get; set; }
        public virtual UserRegister UserRegister { get; set; }
    }
}
