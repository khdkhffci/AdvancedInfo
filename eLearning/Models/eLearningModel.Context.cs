﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class eLearningEntities : DbContext
    {
        public eLearningEntities()
            : base("name=eLearningEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<category> categories { get; set; }
        public DbSet<cours> courses { get; set; }
        public DbSet<lesson> lessons { get; set; }
        public DbSet<profile> profiles { get; set; }
        public DbSet<section> sections { get; set; }
        public DbSet<subCategory> subCategories { get; set; }
        public DbSet<sysdiagram> sysdiagrams { get; set; }
        public DbSet<usercours> usercourses { get; set; }
        public DbSet<userlesson> userlessons { get; set; }
    }
}
