namespace Examen_TweedeZit
{
    internal class Program
    {
        static void Main(string[] args)
        {
            ExaminationAugust option = new ExaminationAugust();
            string[] menuOptions = ["CountEvens", "Fortune Teller", "CatNames"];
            Console.WriteLine("==== MENU ===");

            for(int i=0; i < menuOptions.Length; i++)
            {
                Console.WriteLine($"{i + 1}. {menuOptions[i]}");
            }

            Console.Write("Maak een keuze: ");
            int keuze = Convert.ToInt32(Console.ReadLine());

            switch (keuze)
            {
                case 1:
                    option.CountEvens();
                    break;
                case 2:
                    option.FortuneTeller();
                    break;
                case 3:
                    option.CatNames();
                    break;
            }
        }
    }
}
