#include <stdio.h>
#include <stdlib.h>

int main()
{
    int soma=0, soma2=0, v[6],i;

        for(i=0;i<6;i++)
        {
            printf("numero [%i]",i);
            scanf("%i",&v[i]);
        }
        for(i=0;i<6;i++)
        {
            if(i%2==0)
            {
                soma2=soma2+v[i];
            }
            if(v[i]%2==0)
            {
                soma=soma+v[i];
            }
        }
        printf("Soma dos numeros pares %i\n",soma);
        printf("Soma das casas pares %i",soma2);
}
