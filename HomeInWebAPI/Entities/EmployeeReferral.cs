//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HomeInWebAPI.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class EmployeeReferral
    {
        public int id { get; set; }
        public Nullable<int> worker_id { get; set; }
        public Nullable<int> user_id { get; set; }
        public string employerReferrel { get; set; }
        public string workExperience { get; set; }
        public Nullable<decimal> ratecharged { get; set; }
        public Nullable<System.DateTime> recommendationDate { get; set; }
    
        public virtual Person Person { get; set; }
        public virtual Person Person1 { get; set; }
    }
}