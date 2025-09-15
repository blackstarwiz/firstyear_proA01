using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Examen_TweedeZit
{
    internal class ExaminationAugust
    {
        Random rand = new Random();
        public void CountEvens()
        {
            int[,] twoDArray = new int[6,10];

            for(int kolommen = 0; kolommen < 6; kolommen++)
            {
                for(int rijen = 0; rijen < 10; rijen++)
                {
                    twoDArray[kolommen, rijen] = rand.Next(1,101);
                }
            }

            for (int kolommen = 0; kolommen < 6; kolommen++)
            {
                int evenCounter = 0;
                for (int rijen = 0; rijen < 10; rijen++)
                {
                    if (twoDArray[kolommen,rijen]%2 == 0)
                    {
                        evenCounter++;
                    }
                    Console.Write(twoDArray[kolommen,rijen]);
                    Console.Write(" ");
                }
                Console.Write($" ==> {evenCounter} ");
                Console.WriteLine();
            }
            
        }
        

        public void FortuneTeller()
        {

            string[] fortunes = ["fortune 1", "fortune 2", "fortune 3", "fortune 4", "fortune 5", "fortune 6"];

            Console.Write("Hoeveel mensen?: ");
            int aantalMensen = Convert.ToInt32(Console.ReadLine());

            Console.Write("Zelf kiezen (z) of automatische (a)?: ");
            string keuzeFor = Console.ReadLine();

            switch (keuzeFor)
            {
                case "a":
                    for(int i = 1; i <= aantalMensen; i++)
                    {
                        int indexFortune = rand.Next(0, fortunes.Length);

                        Console.WriteLine($"Persoon {i}: {fortunes[indexFortune]}");
                    }
                    break;
                case "z":
                    Console.WriteLine($"Kies indices (1-{fortunes.Length}), gescheiden door #");
                    //lijst van opties
                    for(int i = 0; i < fortunes.Length; i++)
                    {
                        Console.WriteLine($"{i+1}: {fortunes[i]}");
                    }

                    string order = Console.ReadLine();

                    //array van numbers maar in string
                    string[] orderInt = order.Split("#");


                    for (int i = 1; i <= aantalMensen; i++)
                    {
                        int fortuneInt = Convert.ToInt32(orderInt[i - 1]);

                        Console.WriteLine($"Persoon {i}: {fortunes[fortuneInt-1]}");
                    }
                    break;
            }
        }

        public void CatNames()
        {
            Console.Write("Geef het energieniveau in van je kat (1-5): ");

            int energieNiveau = Convert.ToInt32(Console.ReadLine());
            if (energieNiveau > 5 || energieNiveau < 1)
            {
                Console.WriteLine("Error: energieNiveau moet tussen 1-5 liggen!");
                CatNames();
            }

            Console.Write("Geef de vriendelijkheid in van je kat (1-5): ");

            int vriendelijkheid = Convert.ToInt32(Console.ReadLine());
            if (vriendelijkheid > 5 || vriendelijkheid < 1)
            {
                Console.WriteLine("Error: vriendelijkheid moet tussen 1-5 liggen!");
                CatNames();
            }

            Console.Write("Slaap je kat graag? (ja/nee): ");
            string slaap = Console.ReadLine();
            switch (slaap)
            {
                case "ja": case "nee":
                    break;
                default:
                    CatNames();
                    break;
            }
         

            Console.WriteLine($"De naam van jou kat is: {GenerateCatNames(energieNiveau,vriendelijkheid,slaap)}");
        }
        private string GenerateCatNames(int energie,int vriendelijkheid, string slaap)
        {
            string catName = "";
            string[] preFix = ["Zzz","Fuzz","Bolt","Zoom","Chaos"];
            string[] Middels = ["Bite", "Shadow", "Whisk", "Sniggle", "Purr"];
            string[] sufFix = ["Napster", "Hunter"];

            catName += $"{preFix[energie-1] + Middels[vriendelijkheid-1]}";

            if(slaap == "ja")
            {
                catName += sufFix[0];
            }
            else
            {
                catName += sufFix[1];
            }


                return catName;
        }
    }
}
