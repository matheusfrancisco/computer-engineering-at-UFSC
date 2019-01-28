#include <stdio.h>
#include <stdlib.h>

int main()
{
    int v[10],v1[10];
    int z,x,c=0,j;

    for(x=0;x<10;x++)//Dar Valores pra vetor
    {
        printf("V[%i]: ",x);
        scanf("%i",&v[x]);
    }
    for(x=0;x<10;x++)//Vetor de testes, Testa ele mesmo em todas as casa para ver se tem numero repetido;
    {
        for(z=1;z<10;z++)
        {
            if(z!=x)
            {
                if(v[x]==v[z])
                {
                    v1[c]==v[z];
                    c++;
                }
            }
        }
    }
    for(x=0;x<c;x++)//Vetor para tirar numeros repetidos do mesmo vetor;
    {
        for(z=1;z<c;z++)
        {
            if(v1[x]==v1[z])
            {
                for(j=z;j<c;j++)
                {
                    v1[j]=v1[j+1];
                    c--;
                }
            }
        }
    }
    printf("Vetor de repetidas\n");
    for(x=0;x<c;x++)
    {
        printf("V1[%i]= %i\n",x,v[x]);
    }
}
