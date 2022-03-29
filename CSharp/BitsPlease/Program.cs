using System;
using System.IO;

namespace BitsPlease
{
    class Program
    {
        static void Main(string[] args)
        {
            /* TODO LIST 
             * create an array
             * split that array
             * make a method \ function 
             *change the method to use a param
             * change the console colors based on statuses
             * use a physical path 
             * 
             
             
             
             */
// create a function \ Method 
            static void Valadate (string computer)
            {
                string TestPath = @"\\"+computer+@"\c$\users";
                if (System.IO.Directory.Exists(TestPath))
                {
                    Console.ForegroundColor = ConsoleColor.Green;
                    Console.Write(" [On  line]  ");
                    Console.ForegroundColor = ConsoleColor.White;
                }

                else
                {
                    Console.ForegroundColor = ConsoleColor.Yellow;
                    Console.BackgroundColor = ConsoleColor.DarkRed;
                    Console.Write(" [Off line]  ");
                    Console.ForegroundColor = ConsoleColor.White;
                    Console.BackgroundColor = ConsoleColor.Black;
                }
                Console.ForegroundColor = ConsoleColor.Yellow;
                Console.WriteLine(computer);
                Console.ForegroundColor = ConsoleColor.White;
            }
            // make an array of computer names
            string[] computers = { "barber-pc", "SQA1", "SQA2", "SQA3", "SQA4", "SQA-WS-A", "SQA-WS-B" , "Odin"};
            /*string[] desktop = { "computers[0]", "computers[1]" };
            string[] servers = { "computers[2]", "computers[3]", "computers[4]", "computers[5]", "computers[6]" };
                       
            Console.WriteLine("Computers in array " + desktop.Length);
            Console.WriteLine("Servers in array " + computers.Length);*/
            // make a foreach loop to cycle through computer names
            foreach (string computer in computers) {
                Valadate(computer);
                
            }

           
        }
    }
}
