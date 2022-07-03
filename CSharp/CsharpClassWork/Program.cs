using System;

namespace CsharpClassWork
{
    internal class Program
    {
        static void NormalConsoleColor()
        { 
            Console.ForegroundColor = ConsoleColor.White;
            Console.BackgroundColor = ConsoleColor.Black;
        }
        static void HelloWorld()
        { 
            Console.WriteLine("Hello World"); 
        }
        static void Variables()
        {
            /*Variables
                int - stores integers (whole numbers), without decimals, such as 123 or -123
                double - stores floating point numbers, with decimals, such as 19.99 or -19.99
                char - stores single characters, such as 'a' or 'B'. Char values are surrounded by single quotes
                string - stores text, such as "Hello World". String values are surrounded by double quotes
                bool - stores values with two states: true or false
            */
            int         myNum            = 5;
            double  myDoubleNum = 5.99D;
            float      totalCost           = 15.22f;
            char      grade                 = 'D';
            bool      myBool             = true;
            string    myText              = "Hello";

            Console.WriteLine(myNum);
            Console.WriteLine(myDoubleNum);
            Console.WriteLine(totalCost);
            Console.WriteLine(grade);
            Console.WriteLine(myBool);
            Console.WriteLine(myText);
        }

        static void Main(string[] args)
        {
            Console.WriteLine("Hello World!");
        }
    }
}
