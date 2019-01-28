#include <stdio.h>
#include <stdlib.h>

int main()
{
    const int arraySize=10;
    int n[arraySize];

    int i;

    for(i=0;i<arraySize;i++)
    {
        printf("\n Digite elemento %i do vetor:",i);
        scanf("%i",&n[i]);
    }

    printf("Elt.  Valor\n");
    for(i=0;i<arraySize;i++)
    {
        printf("%i     %i\n",i,n[i]);
    }
}
