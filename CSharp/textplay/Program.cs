using System;
using System.IO;

public class Example
{
    public static void Main()
    {
        string path = @"e:\somefile.txt";

        bool fileExist = File.Exists(path);
        if (fileExist)
        {
            Console.WriteLine("File exists.");
        }
        else
        {
            Console.WriteLine("File does not exist.");
            Console.WriteLine("do you wnat me to make it (y \\ n)");
            string answer = Console.ReadLine();
            if (answer == "y")
            {
                using (FileStream fs = File.Create(path)) ;
            }

        }
    }
}