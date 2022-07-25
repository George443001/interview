using System;
using System.Collections.Generic;
using Xunit;
using Moq;



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
            float totalCost           = 15.22f;
            char  grade                 = 'D';
            bool      myBool             = true;
            string    myText              = "Hello";

            Console.WriteLine(myNum);
            Console.WriteLine(myDoubleNum);
            Console.WriteLine(totalCost);
            Console.WriteLine(grade);
            Console.WriteLine(myBool);
            Console.WriteLine(myText);
        }
        static void WorkingWithLists() {
            /*working with lists*/

            // define a new list with four numbers 
            var ListNumbers = new List<int>() { 1, 2, 3, 4 };

            // add the number 5 to the list
            ListNumbers.Add(5);

            // add numbers from an array to the current list of numbers
            ListNumbers.AddRange(new int[3] { 6, 7, 8 });

            // write to the console all of the numbers in this list 
            foreach (var num in ListNumbers) { Console.ForegroundColor = ConsoleColor.Yellow; Console.WriteLine(num); }

            // write to the console the contents index 1 in the the list 
            Console.ForegroundColor = ConsoleColor.Green; Console.WriteLine(ListNumbers[1]);

            // remove index [0] of the list and watch the rest of the list adjust. 
            Console.ForegroundColor = ConsoleColor.DarkCyan; Console.WriteLine("Was this " + ListNumbers[1]);
            ListNumbers.Remove(1);
            Console.WriteLine("now its  this " + ListNumbers[1]);

        }
        static void List1Numbers() {
            var ListNumbers1 = new List<int>() { 1, 2, 3, 4 };
            while (0 == 0)
            {

                int newNumber = ListNumbers1.Count + 1;
                ListNumbers1.Add(newNumber);
                //Console.ReadLine();
                foreach (var n in ListNumbers1)
                {
                    Console.WriteLine(n);

                }

            }
        }

        

        static void Main(string[] args)
        {
           
        }
    }
}
