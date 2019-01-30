#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <string.h>

#define TAMANHO 10

typedef struct pil
{
    int *dado;
    int total;

} pilha;

pilha Empilhar(int dado, pilha pil)
{
    pil.dado[pil.total] = dado;
    pil.total++;
    return pil;
}

int Desempilhar(pilha *pil)
{
    pil->total--;

    return pil->dado[pil->total];
}

void imprimepilha(pilha p)
{
    printf("\n\n");
    int i = p.total;
    for(;i != 0; i--)
        printf("PILHA: numero %d -- dado %d\n", i-1, p.dado[i-1]);

}


void main()
{
    pilha pil;
    pil.dado = (int*) malloc(TAMANHO*sizeof(int));
    pil = Empilhar(1, pil);
    pil = Empilhar(2,pil);
    pil = Empilhar(3, pil);
    pil = Empilhar(4, pil);
    pil = Empilhar(5, pil);
    pil = Empilhar(6, pil);
    pil = Empilhar(7, pil);
    pil = Empilhar(8, pil);
    pil = Empilhar(9, pil);
    pil = Empilhar(10, pil);

    int i = Desempilhar(&pil);

    imprimepilha(pil);

}
