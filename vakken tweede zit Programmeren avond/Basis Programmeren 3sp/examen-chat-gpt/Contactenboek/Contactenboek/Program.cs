namespace Contactenboek
{
    internal class Program
    {
        private static void Main(string[] args)
        {
            RunAddressBook();
        }

        public static void RunAddressBook()
        {
            string[] opties = { "Contact toevoegen", "Alle contacten weergeven", "Contact zoeken (op Id)", "Contact bijwerken", "Contact verwijderen", "Stoppen" };
            AddressBook newList = new AddressBook();
            bool activeContact = true;

            do
            {
                Console.Clear();
                for (int optie = 0; optie < opties.Length; optie++)
                {
                    Console.ForegroundColor = ConsoleColor.Red;
                    Console.Write($"{optie + 1}. ");
                    Console.ResetColor();
                    Console.WriteLine(opties[optie]);
                }
                Console.Write("Maak een keuze: ");
                Console.ForegroundColor = ConsoleColor.Red;
                int keuze = Convert.ToInt32(Console.ReadLine());
                Console.ResetColor();
                Console.Clear();

                switch (keuze)
                {
                    case 1:
                        Console.Write("Voer naam in: ");
                        string naam = Console.ReadLine();
                        Console.WriteLine();

                        Console.Write("Voer E-amail in: ");
                        string email = Console.ReadLine(); ;

                        newList.AddContact(naam, email);

                        break;

                    case 2:
                        Console.WriteLine("List Of Contacts");
                        Console.WriteLine();

                        Console.Write(newList.ListContacts());
                        Console.ReadKey();
                        break;

                    case 3:
                        Console.WriteLine($"Contact zoeken via Id: {newList.CountContacts()}\n");
                        Console.Write("Geef Id: ");
                        int IdContact = Convert.ToInt32(Console.ReadLine());

                        Console.WriteLine(newList.GetContactById(IdContact));
                        break;

                    case 4:
                        Console.WriteLine($"Contact bewerken met Id: {newList.CountContacts()}\n");

                        Console.Write("Geef Id: ");
                        int idNew = Convert.ToInt32(Console.ReadLine());
                        Console.WriteLine();

                        Console.Write("Geef Naam: ");
                        string naamNew = Console.ReadLine();
                        Console.WriteLine();

                        Console.Write("Geef E-mail: ");
                        string emailNew = Console.ReadLine();
                        newList.UpdateContact(idNew, naamNew, emailNew);

                        break;

                    case 5:
                        Console.WriteLine($"Contact verwijderen met Id: {newList.CountContacts()}\n");
                        Console.Write("Geef Id: ");
                        string Delete = Console.ReadLine();

                        if (uint.TryParse(Delete, out uint idDelete))
                        {
                        }
                        else
                        {
                            Console.WriteLine("Foutieve Invoer: moet positief zijn en een cijfer\nPropeer opnieuw.");
                            Console.ReadKey();
                            continue;
                        }
                        break;

                    default:
                        activeContact = false;
                        break;
                }
            } while (activeContact);
        }
    }
}