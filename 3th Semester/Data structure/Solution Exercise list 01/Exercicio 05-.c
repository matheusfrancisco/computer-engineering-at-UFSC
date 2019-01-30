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


void Inserir(celula** p, int num)
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

int Remover(celula* p)
{
    int aux;
    celula *rem = p->seg;
    if(p->seg)
    {
    aux = p->seg->dado;
    p->seg = p->seg->seg;
    printf("removeu %d da lista\n", aux);
    }
    else
    printf("Sem elementos a serem removidos\n");

    free(rem);
    return aux;
}

celula * Buscar(celula *lista, int num)
{
    for(;lista!=NULL;lista = lista->seg)
        if(lista->dado == num)
            return lista;

    return NULL;
}

void Imprime(celula *lista)
{
    printf("\n\n");
    for(;lista!=NULL;lista = lista->seg)
        printf("numero: %d\n", lista->dado);
}

int Minimo(celula *lista)
{
    int min = 999999;

    for(;lista!= NULL; lista=lista->seg)
        if(lista->dado < min)
            min = lista->dado;

    return min;
}


void main()
{
    celula *lista = NULL;

    Inserir(&lista ,5);
    Inserir(&lista ,1);
    Inserir(&lista ,12);
    Inserir(&lista ,15);
    Inserir(&lista ,43);
    Inserir(&lista ,99);
    Inserir(&lista ,200);

    Imprime(lista);
    celula *x = Buscar(lista, Minimo(lista));
    //printf("Achou %d na lista\n", x->dado);

    int i = Minimo(lista);
    printf("%d e o menor numero! \n", i);


    /*Remover(x);
    Imprime(lista);*/
}
