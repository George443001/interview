using System;

namespace george
{
    class Program
    {
        static void Main(string[] args)
        {
            /* find out a color that are available in c# and store tiem in an array
             * if the option is in the array change the color 
             * if not in the array then throw an error
             * 
             * 
             * 
             */
            Random rand = new Random();
            int number = rand.Next(0, 10); //returns random number between 0-9
            Console.WriteLine("what is your name");
            string Name = Console.ReadLine();
            Console.Clear();
            Console.WriteLine("hello " + Name );
            Console.WriteLine("random number is " + number );
            Console.WriteLine("Give me a color");
            string Color = Console.ReadLine();
            if  (Color == "red") 
            {
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine("this is my red");
                Console.ForegroundColor = ConsoleColor.White;
            }
            if  (Color == "blue")
           {
                Console.ForegroundColor = ConsoleColor.Blue;
                Console.WriteLine("this is my blue");
                Console.ForegroundColor = ConsoleColor.White;
            }
            if (Color == "Green")
            {
                Console.ForegroundColor = ConsoleColor.Green;
                Console.WriteLine("this is my Green");
                Console.ForegroundColor = ConsoleColor.White;
            }
            if (Color == "yellow")
            {
                Console.ForegroundColor = ConsoleColor.Yellow;
                Console.WriteLine("this is my Yellow");
                Console.ForegroundColor = ConsoleColor.White;
            }
            if (Color == "white")
            {
                Console.ForegroundColor = ConsoleColor.White;
                Console.WriteLine("this is my White");
                Console.ForegroundColor = ConsoleColor.White;
            }
            if (Color == "Aqua")
            {
                Console.ForegroundColor = ConsoleColor.Cyan;
                Console.WriteLine("this is my Cyan");
                Console.ForegroundColor = ConsoleColor.White;
            }
            if (Color == "Magenta")
            {
                Console.ForegroundColor = ConsoleColor.Magenta;
                Console.WriteLine("this is my Magenta");
                Console.ForegroundColor = ConsoleColor.White;
            }
            if (Color == "DarkMagenta")
            {
                Console.ForegroundColor = ConsoleColor.DarkMagenta;
                Console.WriteLine("this is my DarkMagenta");
                Console.ForegroundColor = ConsoleColor.White;
            }
            if (Color == "Gray")
            {
                Console.ForegroundColor = ConsoleColor.Gray;
                Console.WriteLine("this is my Gray");
                Console.ForegroundColor = ConsoleColor.White;
            }
        }

    }
   
}
