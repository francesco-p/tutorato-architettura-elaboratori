/*
 * Filename: pow.c
 */
#include<stdio.h>

int pow2(int x)
{
    return x*x;
}

void main()
{
   int array[10] = {3,10,4,3,4,5,3,7,1,9}; 
   int i = 0;
   int n = 0;

   while(i<10)
   {
        n = pow2(array[i]);
        printf("%d^2 = %d\n", array[i], n); 
        i++;
   }
}
