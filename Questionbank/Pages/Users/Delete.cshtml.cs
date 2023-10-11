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
    public class DeleteModel : PageModel
    {
        private readonly Questionbank.Data.questionbankDbContext _context;

        public DeleteModel(Questionbank.Data.questionbankDbContext context)
        {
            _context = context;
        }

        [BindProperty]
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

        public async Task<IActionResult> OnPostAsync(int? id)
        {
            if (id == null || _context.Users == null)
            {
                return NotFound();
            }
            var user = await _context.Users.FindAsync(id);

            if (user != null)
            {
                user = user;
                _context.Users.Remove(user);
                await _context.SaveChangesAsync();
            }

            return RedirectToPage("./Index");
        }
    }
}
