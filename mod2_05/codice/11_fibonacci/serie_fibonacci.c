/*
 * Filename: serie_fibonacci.c
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

    int n = 0;
    int i = 0;

    printf("Inserire n per calcolare la serie di fibonacci fino all'n-esimo numero:\n");

    scanf("%d",&n);

    printf("I primi %d numeri della serie sono: ", n);

    for(i=0; i<n; i++)
    {
        printf("%d ",fib(i));
    }

    printf("\n");

}

