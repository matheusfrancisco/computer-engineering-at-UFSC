#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <string.h>


#define MAX_NOME 50

typedef struct pes
{
    char nome[MAX_NOME];
    int num;
} pessoa;

typedef struct cel
{
    pessoa *conteudo;
    struct cel *seg;
    struct cel *ant;
} celula;

pessoa *CriaPessoa(char *nome, int num)
{
    pessoa *nova = (pessoa*) malloc(sizeof(pessoa));
    strcpy(nova->nome, nome);
    nova->num = num;

    return nova;
}


void Inserir(celula* p, pessoa *x)
{

    celula* elemento = (celula*) malloc (sizeof(celula));
    elemento->conteudo = x;

        elemento->seg = p->seg;
        elemento->ant = p;
        if(p->seg == p)
            p->ant = elemento;
        if(p->seg)
            p->seg->ant = elemento;
        p->seg = elemento;
        printf("inseriu %s\n", p->seg->conteudo->nome);
}
/*
pessoa * Remover(celula* p)
{
    pessoa *aux = NULL;
    celula *rem = p;
    aux = p->conteudo;

    if(p->seg)
        p->seg->ant = p->ant;
    p->ant->seg = p->seg;

    free(rem);
    return aux;
}
*/
celula *Remover(celula *lista, celula *p)
{
    celula *rem = p;

    if(lista == p)
        lista = p->seg;

    p->seg->ant = p->ant;
    p->ant->seg = p->seg;

    free(rem);
    return lista;
}

celula *Buscar(celula *lista, char nome[])
{
        celula *achado = NULL;
        celula *aux = lista;
        while(lista->seg != aux)
        {
                if(strcmp(lista->conteudo->nome, nome) == 0)
                        achado = lista;
                lista = lista->seg;
        }
        return achado;
}



void Imprime(celula *lista)
{
    celula *p;
    p = lista->seg;

    for( ;lista->seg!=p; lista = lista->seg){/* lista->seg*/
            if(lista->seg->conteudo->nome)
                printf("nome: %s -- numero: %d\n", lista->seg->conteudo->nome, lista->seg->conteudo->num);
            else
                printf("Cabeca\n");
                system("pause");
        }
}




int main()
{
    celula *lista = (celula*) malloc( sizeof(celula));
    lista->seg = lista;
    lista->ant = lista;

    Inserir(lista ,CriaPessoa("eduardo",10));
    Inserir(lista ,CriaPessoa("andrei",12));
    Inserir(lista ,CriaPessoa("luiz",13));
    Inserir(lista ,CriaPessoa("caio",14));
    Inserir(lista ,CriaPessoa("daniel",15));
    Inserir(lista ,CriaPessoa("joao",16));
    Inserir(lista ,CriaPessoa("pedro",17));

    celula *x = Buscar(lista, "pedro");
    printf("Achou %s na lista\n", x->conteudo->nome);
    lista = Remover(lista, x);
    /*Remover(x);*/

    Imprime(lista);
system("pause");
}
