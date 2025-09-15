using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace oefening
{
    internal class Evaluation
    {

        public static void Menu()
        {
            Console.WriteLine("Kies een van de onderstaande opties:\n1 - Resultaat\n2 - Wiskunde\n3 - TekstSpel\n4 - Einde");


            int optie = int.Parse(Console.ReadLine());
            switch (optie)
            {
                case 1:
                    Evaluation.Result();
                    break;
                case 2:
                    Evaluation.Mathematics();
                    break;
                case 3:
                    Evaluation.TextGame();
                    break;
                case 4:
                    Console.WriteLine("Tot ziens.");
                    break;
                default:
                    Console.WriteLine("Ongeldige keuze");
                    Menu();
                    break;
            }
        }
        //wachtwoord toest.ap.be: kopje
        public static void Result()
        {
            string antwoord = "ja";
            int countGes = 0;
            int count_NietGeslaagd = 0;
            int totaalScore = 0;

            Console.Write("Op hoeveel punten staat het examen?: ");
            int punten = int.Parse(Console.ReadLine());

            do
            {
                Console.Write("Resultaat: ");
                int result = int.Parse(Console.ReadLine());
                totaalScore += result;

                if (result >= punten / 2)
                {
                    Console.WriteLine("Geslaagd!");
                    countGes++;
                }
                else
                {
                    Console.WriteLine("Niet Geslaagd!");
                    count_NietGeslaagd++;
                }

                Console.Write("Nog resultaten (ja of nee): ");
                antwoord = Console.ReadLine();

            } while (antwoord.Equals("ja", StringComparison.OrdinalIgnoreCase));
            //! antwoord.Equals("ja", StringComparison.OrdinalIgnoreCase)
            //! zorgt ervoor dat de vergelijking niet hoofdlettergevoelig is.
            
            int totaalStudenten = countGes + count_NietGeslaagd;

            //!totaalScore houdt de som van alle ingevoerde resultaten bij.
            //!Aan het einde wordt het gemiddelde berekend door totaalScore te delen door het aantal studenten (totaalStudenten).
            double gemiddelde = totaalStudenten > 0 ? (double)totaalScore / totaalStudenten : 0;

            Console.WriteLine($"Er zijn {countGes} studenten geslaagd en {count_NietGeslaagd} niet geslaagd.");
            Console.WriteLine($"Het gemiddelde resultaat is {gemiddelde:F1} op {punten}.");
        }



        public static void Mathematics()
        {
            Console.WriteLine("Wat wil je bereken (A) de som of (B) het resultaat van een vermenigvuldiging berekenen?");
            Console.Write("Keuze A/B: ");
            string antwoord = Console.ReadLine();
            int start = 0;
            int end = 0;
            int result = 0;


            if (antwoord == "a" | antwoord == "A")
            {
                Console.Write("Startgetal:");
                start = int.Parse(Console.ReadLine());
                Console.Write("Eindgetal:");
                end = int.Parse(Console.ReadLine());
                int count = start;
                int hulp = start;
                do
                {
                    count++;
                    result += hulp + count;
                    hulp = result;
                } while (count != end);

                Console.WriteLine($"De som van de getallen {start} en {end} is {result}");
            }
            else
            {
                Console.Write("Startgetal:");
                start = int.Parse(Console.ReadLine());
                Console.Write("Eindgetal:");
                end = int.Parse(Console.ReadLine());
                int count = start;
                int hulp = start;


                do
                {
                    count++;
                    result += hulp * count;
                    hulp = result;

                } while (count != end);
                Console.WriteLine($"Het rusltaat van de vermenigvuldiging van de getallen {start} tot {end} is {result}");
            }
        }



        public static void TextGame()
        {
            Console.Write("Wat wil je omdraaien?: ");
            string woord = Console.ReadLine();
            string result = "";

            for (int i = woord.Length - 1; i >= 0; i--)
            {
                result += woord[i];
            }

            Console.WriteLine($"Omgekeerde tekst: {result}");
        }
    }
   
}
