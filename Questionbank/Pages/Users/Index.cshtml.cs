using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using Questionbank.Data;
using Questionbank.Model.Domain;

namespace Questionbank.Pages.Users
{
    public class IndexModel : PageModel
    {
        private readonly Questionbank.Data.questionbankDbContext _context;

        public IndexModel(Questionbank.Data.questionbankDbContext context)
        {
            _context = context;
        }

        public IList<user> user { get;set; } = default!;

        public async Task OnGetAsync()
        {
            if (_context.Users != null)
            {
                user = await _context.Users.ToListAsync();
            }
        }
    }
}
