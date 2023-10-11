using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Questionbank.Model.Domain;

namespace Questionbank.Data
{
    public class questionbankDbContext : DbContext
    {
        public questionbankDbContext(DbContextOptions options) : base(options)
        {
        }
        public virtual DbSet<user> Users { get; set; }
        public DbSet<Questionbank.Model.Domain.subjects>? subject { get; set; }
    }
}
