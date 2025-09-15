using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contactenboek
{
    internal class Contact
    {
        public int Id { get; }
        public string Naam { get; set; }
        public string Email { get; set; }

        public Contact(int id, string naam, string email)
        {
            Id = id;
            Naam = naam;
            Email = email;
        }
    }
}