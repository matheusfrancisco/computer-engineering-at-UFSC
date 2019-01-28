#include <stdio.h>
#include <stdlib.h>

int qtdPares(int * v, int qtd)
{
    int sum = 0;
    int i;
    for(i=0;i<qtd;i++)
    {
        if(v[i] % 2 == 0)
        {
            sum++;
        }
    }
    return sum;
}

int main()
{
    int i;
    int * vetor_a = NULL;
    int * vetor_b = NULL;
    int * vetor_a_temp = NULL;
    int * vetor_c = NULL;
    int vetor_a_qtd;
    int vetor_b_qtd;
    int vetor_c_qtd;

    printf("Especifique a quantidade do vetor A: ");
    scanf("%d", &vetor_a_qtd);

    vetor_a = (int*)malloc(sizeof(int)*vetor_a_qtd);


    for(i=0;i<vetor_a_qtd;i++)
    {
        printf("Posicao[%d]: ", i);
        scanf("%d", &vetor_a[i]);
    }

    vetor_b_qtd = qtdPares(vetor_a, vetor_a_qtd);
    vetor_b = (int*)malloc(sizeof(int)*vetor_b_qtd);
    vetor_a_temp = (int*)malloc(sizeof(int)*vetor_b_qtd);

    int temp = 0;

    for(i=0;i<vetor_a_qtd;i++)
    {
        if(vetor_a[i] % 2 == 0)
        {
            vetor_a_temp[i] = vetor_a[i];
        }
    }

    for(i=0;i<vetor_b_qtd;i++)
    {
        vetor_b[i] = vetor_a_temp[i];
    }

    for(i=0;i<vetor_b_qtd;i++)
    {
        printf("%d ", vetor_b[i]);
    }

    return 0;
}
