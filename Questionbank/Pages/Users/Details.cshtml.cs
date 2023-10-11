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
    public class DetailsModel : PageModel
    {
        private readonly Questionbank.Data.questionbankDbContext _context;

        public DetailsModel(Questionbank.Data.questionbankDbContext context)
        {
            _context = context;
        }

      public user user { get; set; } = default!; 

        public async Task<IActionResult> OnGetAsync(int? id)
        {
            if (id == null || _context.Users == null)
            {
                return NotFound();
            }

            var user = await _context.Users.FirstOrDefaultAsync(m => m.Id == id);
            if (user == null)
            {
                return NotFound();
            }
            else 
            {
                user = user;
            }
            return Page();
        }
    }
}
