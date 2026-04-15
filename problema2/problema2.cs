using System;


class SumProgram
{   

    public static int SumNumbers(int num1, int num2)
    {
        return num1 + num2;
    }

    static void Main()
    
    {
       Console.WriteLine("DIGITE SOMENTE NÚMEROS INTEIROS");
       Console.Write("Digite um número inteiro: ");
       string value1 = Console.ReadLine();

        if(!int.TryParse(value1, out int num1))
        {
            Console.WriteLine("Valor inválido.");
            return;
        }

       Console.Write("Digite outro número inteiro: ");
       string value2 = Console.ReadLine();

       if(!int.TryParse(value2, out int num2))
       {
           Console.WriteLine("Valor inválido.");
           return;
       }

        int result = SumNumbers(num1, num2);
        Console.WriteLine(result);
    }
}