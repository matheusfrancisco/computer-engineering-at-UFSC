#include <stdio.h>
#include <stdlib.h>

int main()
{
    const int arraySize=10;
    float n[arraySize];
    float sum=0;
    int i;

    for(i=0;i<arraySize;i++)
    {
        printf("\n Digite elemento %i do vetor:",i);
        scanf("%f",&n[i]);
    }

    printf("Elt.  Valor\n");
    for(i=0;i<arraySize;i++)
    {
        printf("%i     %.2f\n",i,n[i]);
    }

    for(i=0;i<arraySize;i++)
    {
        sum=sum+n[i];
    }
    printf("\n Soma dos elementos do vetor = %.1f",sum);
}
