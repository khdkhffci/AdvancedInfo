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
    
    public partial class lesson
    {
        public lesson()
        {
            this.userlessons = new HashSet<userlesson>();
        }
    
        public int id { get; set; }
        public string title { get; set; }
        public string brief { get; set; }
        public string videoFile { get; set; }
        public string description { get; set; }
        public Nullable<int> section { get; set; }
        public Nullable<System.DateTime> creationDate { get; set; }
        public Nullable<int> lessonOrder { get; set; }
        public Nullable<int> course { get; set; }
    
        public virtual cours cours { get; set; }
        public virtual section section1 { get; set; }
        public virtual ICollection<userlesson> userlessons { get; set; }
    }
}
