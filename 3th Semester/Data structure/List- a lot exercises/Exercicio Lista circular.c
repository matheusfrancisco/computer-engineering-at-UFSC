#include <stdio.h>
#include <stdlib.h>

typedef struct cel {

    int conteudo;
    struct cel * seg;
}   celula;

typedef celula *lista;

void Inserir (celula * p, int x);
celula * Buscar (celula * lst, int x);
void Remover (celula * p);
void Imprimir (celula *lst);

int main () {

    lista lst =(lista *)malloc(sizeof(lista*));
    lst->seg = lst->seg;
    celula * n;
    /*celula c;
    lst = &c;
    lst -> seg = NULL;*/

    Inserir (lst, 22);
    Inserir (lst, 20);
    Inserir (lst, 16);
    Inserir (lst, 8);
    printf ("Inseriu: ");

    Imprimir (lst);

    n = Buscar (lst, 16);

    printf ("\nBuscou e Removeu: %d. \n\n", *n);

    Remover (n);

    Imprimir (lst);

    return 0;
}

void Inserir (celula * p, int x) {

    celula * nova;
    nova = (celula*) malloc (sizeof(celula));
    nova -> conteudo = x;
    nova -> seg = p -> seg;
    p -> seg = nova;
}

celula * Buscar (celula * lst, int x) {

    celula * p = lst -> seg;

    while (p != NULL && p -> conteudo != x){
        p = p -> seg;
    }

    return p;
}

void Remover (celula * p){

    celula * lixo;
    lixo = p -> seg;
    p -> seg = lixo -> seg;
    free (lixo);
}

void Imprimir (celula * lst) {

    celula * p;
    p = lst -> seg;

    while (p != NULL){
        printf ("%d ", p -> conteudo);
        p = p -> seg;
    }

    printf ("\n");
}

/* Funcionou, só está imprimindo a lista de baixo pra cima da ordem;
   Perguntar porque está dando erro na declaração da lista (lista lst == lista lst); */
