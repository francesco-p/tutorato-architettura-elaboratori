/*
 * Filename: ricorsione.c
 */
#include<stdio.h>


void rec(int i)
{
    if(i==0)
    {
        return;
    }
    else
    {
        rec(i-1);
        printf("%d\n", i);
        
    }

    return;
}

void main()
{
    
    rec(3);

}
