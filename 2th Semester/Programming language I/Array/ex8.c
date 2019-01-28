#include <stdio.h>
#include <stdlib.h>

int main()
{
    int v[15];
    int maior = 0, menor = 1000,i;

    for(i=0;i<15;i++)
    {
    printf("numero[%i]:",i);
    scanf("%i",&v[i]);
    }
    for(i=0;i<15;i++)
    {
        if(v[i]<menor)
        {
            menor = v[i];
        }
        if(v[i]>maior)
        {
            maior = v[i];
        }
    }
    printf("maior %i menor %i",maior, menor);
}
