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
    
    public partial class BankDetail
    {
        public int BankId { get; set; }
        public string IFSCCode { get; set; }
        public Nullable<long> BankAccountNo { get; set; }
        public Nullable<int> UserID { get; set; }
    
        public virtual RollType RollType { get; set; }
    }
}
