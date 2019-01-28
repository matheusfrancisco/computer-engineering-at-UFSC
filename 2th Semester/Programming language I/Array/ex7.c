#include <stdio.h>
#include <stdlib.h>

int main()
{
    const int arraSize=6;//tamanho vetor
    int cand[arraSize];
    int i,v;
    int n=-1;

    printf("\n Apuracao de Votos: ");
    for(i=0;i<arraSize;i++)
    {
        cand[i]=0;
    }
    for(i=0;i<arraSize;i++)
    {
        printf("\n Escolha o Candidato [1...5]");
        scanf("%i", &v);
        if(v>=0 && v<=5)
        {
            cand[v]++;
        }
            else
            {
             cand[0]++;
            }

    }

    printf("\n Candidato     Votos\n");
    for(i=0;i<arraSize;i++)
    {
        printf("%i    %i\n",i,cand[i]);

    }
    printf("Votos Nulos: %i",cand[0]);

}
