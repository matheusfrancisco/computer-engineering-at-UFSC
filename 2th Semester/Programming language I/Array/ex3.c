#include <stdio.h>
#include <stdlib.h>

int main()
{
    int n[5];
    int i;

    for(i=0;i<5;i++)
    {
        printf("\n Digite elemento %i do vetor :",i);
        scanf("%i",&n[i]);
    }
    printf("Elt.    Valor\n");
    for(i=0;i<5;i++)
    {
        printf("%i      %i \n",i,n[i]);
    }
}
