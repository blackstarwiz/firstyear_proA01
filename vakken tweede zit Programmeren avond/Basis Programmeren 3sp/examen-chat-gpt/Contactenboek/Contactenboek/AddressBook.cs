namespace Contactenboek
{
    internal class AddressBook
    {
        private readonly List<Contact> _contacts = new();
        private int _nextId = 0;

        public int CountContacts()
        {
            return _nextId-1;
        }

        public void AddContact(string naam, string email)
        {
            Contact newContact = new Contact(_nextId++, naam, email);
            _contacts.Add(newContact);
        }

        public string ListContacts()
        {
            string ContactList = "";

            for (int i = 0; i < _contacts.Count; i++)
            {
                ContactList += $"\n**************\nid:{_contacts[i].Id}\n{_contacts[i].Naam},\n{_contacts[i].Email};\n**************";
            }

            return ContactList;
        }

        public string GetContactById(int id)
        {
            return $"\n**************\n{_contacts[id].Naam},\n{_contacts[id].Email};\n**************";
        }

        public void UpdateContact(int id, string naam, string email)
        {
            _contacts[id].Naam = naam;
            _contacts[id].Email = email;
        }

        public void DeleteContact(int id)
        {
            _contacts.RemoveAt(id);
            _nextId = 1;

            foreach (Contact person in _contacts)
            {
                if (_contacts[_nextId].Id == _nextId)
                {
                    continue;
                }
                else
                {
                    _contacts[_nextId] = new Contact(_nextId++, person.Naam, person.Email);
                }
            }
        }
    }
}