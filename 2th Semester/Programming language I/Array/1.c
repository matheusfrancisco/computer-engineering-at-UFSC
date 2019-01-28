#include <stdio.h>
#include <stdlib.h>

int main()
{
    int c[10];
    int i;

    for(i=0;i<10;i++)
    {
        c[i]=5;
    }
    printf("ELEMENTEO       VETOR!\n");
    for(i=0;i<10;i++)
    {
        printf("  %i                %i\n",i,c[i]);
    }
}
