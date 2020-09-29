/*
 * Filename: numero_fibonacci.c
 */

#include<stdio.h>

int fib(int n)
{
    if(n==0)
        return 0;
    if(n==1)
        return 1;
    return fib(n-1) + fib(n-2);
}


void main()
{
    int i = 0;

    printf("Calcola l'n-esimo numero di fibonacci:\n");

    scanf("%d", &d);

    printf("\n %d \n",fib(i));

}
