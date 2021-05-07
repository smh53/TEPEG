using Core.Entities.Concrete.User;
using Entities.Concrete;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess.Concrete.Context
{
  public  class TepegContext : DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {

            optionsBuilder.UseSqlServer(@"Server=SEMIHTAVUKCU\SQLEXPRESS;Database=TEPEG;User Id=sa;Password=123456;");
        }


       
        public DbSet<User> Users { get; set; }      
        public DbSet<Grade> Grades { get; set; }      
        public DbSet<Student> Students { get; set; }      
        public DbSet<OperationClaim> OperationClaims { get; set; }
        public DbSet<UserOperationClaim> UserOperationClaims { get; set; }
    }
}
