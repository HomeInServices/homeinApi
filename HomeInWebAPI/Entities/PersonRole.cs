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
    
    public partial class PersonRole
    {
        public int id { get; set; }
        public int role_id { get; set; }
        public int person_id { get; set; }
    
        public virtual Person Person { get; set; }
        public virtual Role Role { get; set; }
    }
}
