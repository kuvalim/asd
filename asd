using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            string nn = Console.ReadLine();
            int n = Math.Abs(Convert.ToInt16(nn));
            int sch1 = 0;
            int sch2 = 0;
            int[] A = new int[n];
            int[] B = new int[sch1];
            int[] C = new int[sch2];
            for (int i = 0; i < n; i++)
            {
                nn = Console.ReadLine();
                A[i] = Convert.ToInt16(nn);
                if (A[i] % 2 == 0) sch1++;
                else sch2++;
                if (A[i] % 2 == 0) B[(sch1-1)]=A[i];
                else B[(sch2 - 1)] = A[i];
            }
            Console.WriteLine("Четные числа:");
            for (int j = 0; j < (sch1 - 1); j++)
            {
                Console.WriteLine(B[j]);
            }
            Console.WriteLine("Нечетные числа:");
            for (int j = 0; j < (sch2 - 1); j++)
            {
                Console.WriteLine(C[j]);
            }
                Console.ReadLine();
        }
    }
}
