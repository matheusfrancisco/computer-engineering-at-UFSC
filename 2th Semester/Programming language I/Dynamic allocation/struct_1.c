#include <stdio.h>
#include <stdlib.h>

int * criaVetor(int qtd);
void atribuirVetor(int * v, int qtd);
int acharMenor(int * v, int qtd);
int somatorio(int * v, int qtd);
float media(int * v, int qtd);

int main()
{
    int * vetor_a = criaVetor(10);
    int * vetor_b = criaVetor(15);

    if(vetor_a && vetor_b)
    {
        printf("\n>> Atribua vetor A\n\n");
        atribuirVetor(vetor_a, 10);
        printf("\n>> Atribua vetor B\n\n");
        atribuirVetor(vetor_b, 15);
        int a = acharMenor(vetor_a, 10);
        printf("\n\n>> Menor valor de vetor A: %d", a);
        int b = acharMenor(vetor_b, 15);
        printf("\n\n>> Menor valor de vetor B: %d", b);
        printf("\n\n>> Somatorio de vetor A: %d", somatorio(vetor_a, 10));
        printf("\n\n>> Somatorio de vetor B: %d", somatorio(vetor_b, 15));
        printf("\n\n>> Media de vetor A: %f", media(vetor_a, 10));
        printf("\n\n>> Media de vetor B: %f", media(vetor_b, 15));
    }

    return 0;
}

int * criaVetor(int qtd)
{
    return (int*)malloc(sizeof(int) * qtd);
}
void atribuirVetor(int * v, int qtd)
{
    int i;
    for(i=0; i<qtd; i++)
    {
        printf("Posicao [%d]: ", i);
        scanf("%d", &v[i]);
    }
}
int acharMenor(int * v, int qtd)
{
    int menor = 99999999;
    int i;

    for(i=0; i<qtd; i++)
    {
        if(v[i] < menor)
        {
            menor = v[i];
        }
    }
    return menor;
}
int somatorio(int * v, int qtd)
{
    int sum = 0;
    int i;

    for(i=0; i<qtd; i++)
    {
        sum += v[i];
    }
    return sum;
}
float media(int * v, int qtd)
{
    return somatorio(v, qtd) / qtd;
}
