#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <string.h>


#define MAX_NOME 50

typedef struct cel
{
    int dado;
    struct cel *seg;
} celula;


void Inserir(celula**p, int num)
{

    celula* elemento = (celula*) malloc (sizeof(celula));
    elemento->dado = num;
    elemento->seg = NULL;


    if(*p==NULL)
    {
        *p = elemento;
    }
    else
    {
    elemento->seg = (*p)->seg;
    (*p)->seg = elemento;
    }
}


void Imprime(celula *lista)
{
    printf("\n");
    for(;lista!=NULL;lista = lista->seg)
        printf("numero: %d\n", lista->dado);
}

int VerificaOrdem(celula *lista)
{
    for(;lista->seg->seg!=NULL;lista=lista->seg)
        if(lista->seg->dado > lista->seg->seg->dado)
            return 0;
    return 1;
}


void main()
{
    celula *lista ;
    lista = (celula*)malloc(sizeof(celula));
    lista = NULL;

    Inserir(&lista ,1);
    Inserir(&lista ,7);
    Inserir(&lista ,6);
    Inserir(&lista ,5);
    Inserir(&lista ,4);
    Inserir(&lista ,3);
    Inserir(&lista ,2);

    Imprime(lista);

    int i = VerificaOrdem(lista);
    printf("\n1 = Ordenada  0 = Desordenada\n%d\n", i);
    system("pause");
}

