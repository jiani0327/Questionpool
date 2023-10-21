using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Questionbank.Model;

namespace Questionbank.Data
{
    public class questionbankDbContext : DbContext
    {
        public questionbankDbContext(DbContextOptions options) : base(options)
        {
        }

        public DbSet<subject> Subjects {  get; set; }
    }
}
