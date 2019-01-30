#include <stdio.h>
#include <stdlib.h>

typedef struct cel {
    int conteudo;
    struct cel * seg;
    struct cel * ant;
}   celula;

typedef celula * lista;

void Inserir (celula * p, int x);
celula * Buscar (celula * lst, int y);
void Remover (celula * p);
void Imprimir (celula * lst);

int main (){

    lista lst;
    lst->seg = lst;
    lst->ant = lst;
    celula * n;
    /*celula c;
    lst = &c;
    lst->seg = NULL;
    lst->ant = NULL;*/

    Inserir(lst, 22);
    Inserir(lst, 20);
    Inserir(lst, 16);
    Inserir(lst, 8);
    printf ("Inseriu: ");

    Imprimir (lst);

    n = Buscar (lst, 20);

    printf ("\nBuscou e Removeu: %d. \n\n", *n);

    Remover (n);

    Imprimir (lst);

    return 0;
}

void Inserir (celula * p, int x){

    celula * nova;
    nova = (celula*) malloc(sizeof (celula));
    nova -> conteudo = x;
    nova -> ant = p;
    nova -> seg = p -> seg;
    p -> seg = nova;

    if (nova -> seg != NULL){
        nova -> seg -> ant = nova;
    }
}

celula * Buscar (celula * lst, int y){

    celula * p = lst -> seg;

    while(p != NULL && p -> conteudo != y){
        p = p -> seg;
    }

    return p;
}

void Remover (celula * p){

    p -> ant -> seg = p -> seg;

    if (p -> seg != NULL){
        p -> seg -> ant = p -> ant;
    }

    free(p);
}

void Imprimir (celula * lst){

   celula *no = lst;
    do{

        printf("Idade: %d\n",no->conteudo);

        printf("-------------------------------\n");
        no = no->seg;
    }while(no != lst);
}


/* Funcionou, só está imprimindo a lista de baixo pra cima da ordem;
   Perguntar porque está dando erro na declaração da lista (lista lst == lista lst); */

