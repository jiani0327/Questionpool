using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Questionbank.Data;
using Questionbank.Model.Domain;

namespace Questionbank.Pages.Users
{
    public class CreateModel : PageModel
    {
        private readonly Questionbank.Data.questionbankDbContext _context;

        public CreateModel(Questionbank.Data.questionbankDbContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
            return Page();
        }

        [BindProperty]
        public user user { get; set; } = default!;
        

        // To protect from overposting attacks, see https://aka.ms/RazorPagesCRUD
        public async Task<IActionResult> OnPostAsync()
        {
          if (!ModelState.IsValid || _context.Users == null || user == null)
            {
                return Page();
            }

            _context.Users.Add(user);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}
