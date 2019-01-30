#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <string.h>


#define MAX_NOME 50

typedef struct pes
{
    char nome[MAX_NOME];
    int num;
}pessoa;

typedef struct cel
{
    pessoa *conteudo;
    struct cel *seg;
    struct cel *ant;
}celula;

pessoa *CriaPessoa(char *nome, int num)
{
    pessoa *nova = (pessoa*) malloc(sizeof(pessoa ));
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

        if(p->seg !=p)
            p->seg->ant = elemento;
        p->seg = elemento;

}
celula *Buscar(celula *lst, char nome[])
{
        celula *achado = NULL;
        celula *aux = lst;
        while(lst->seg != aux)
        {
                if(strcmp(lst->conteudo->nome, nome) == 0)
                        achado = lst;
                lst = lst->seg;
        }
        return achado;
}


celula *Remover(celula *lst, celula *p)
{
    celula *rem = p;

    if(lst == p)
        lst = p->seg;

    p->seg->ant = p->ant;
    p->ant->seg = p->seg;

    free(rem);
    return lst;
}




void imprime(celula *lst){

    celula *no = lst;
    do{
        printf("Nome: %s\n",no->conteudo->nome);
        printf("Idade: %d\n",no->conteudo->num);

        printf("-------------------------------\n");
        no = no->seg;
    }while(no != lst);
    system("pause");
}

int main(){
       celula *lst = (celula*) malloc( sizeof(celula));
    lst->seg = lst->ant = lst;



    Inserir(lst ,CriaPessoa("eduardo",10));
    Inserir(lst ,CriaPessoa("andrei",12));
    Inserir(lst ,CriaPessoa("luiz",13));
    Inserir(lst ,CriaPessoa("caio",14));
    Inserir(lst ,CriaPessoa("daniel",15));
    Inserir(lst ,CriaPessoa("joao",16));
    Inserir(lst ,CriaPessoa("pedro",17));

imprime(lst);

celula *x = Buscar(lst, "daniel");
printf("Achou %s na lista\n", x->conteudo->nome);
lst = Remover(lst, x);

    imprime(lst);
system("pause");
}
