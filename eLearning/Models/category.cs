//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace eLearn.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class category
    {
        public category()
        {
            this.courses = new HashSet<cours>();
            this.subCategories = new HashSet<subCategory>();
        }
    
        public int id { get; set; }
        public string title { get; set; }
        public string classIcon { get; set; }
        public string description { get; set; }
    
        public virtual ICollection<cours> courses { get; set; }
        public virtual ICollection<subCategory> subCategories { get; set; }
    }
}