#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define MAX_NOME 50

typedef struct pessoa
{
     char nome[MAX_NOME];
     int idade;
     char sobnome[MAX_NOME];
}Pessoa;

/*celula lista*/
typedef struct Lista
{
    Pessoa *elemento;
    struct Lista *prox;
}celula;

celula *inserir(celula *lst,    Pessoa *p)
{
    celula *nova;
    nova=malloc(sizeof(celula));
    celula *oldHead = lst->prox;


    printf("Novo elemento: ");
    scanf("%s  %d", &nova->elemento->nome , &nova->elemento->idade);
    lst->prox = nova;
    nova->prox = oldHead;

    }






celula *insere(celula *x, Pessoa *p){
   celula *nova;
   nova = malloc(sizeof(celula));

   nova->elemento = p;
   nova->prox = x->prox;
   x->prox = nova;
}


void printar(celula *lst)
{
    if( lst == NULL){
        printf("Vazia");
        return 0;
    }
    celula *aux;
    aux = lst->prox;


          do
          {
                 printf("Nome: %s | Idade: %d \n",aux->elemento->nome, aux->elemento->idade);
                 printf("-------------------------- \n");
                 aux= aux->prox;

          }while(aux != NULL);
    }



main()
{
    celula c, *lst;
    c.prox = NULL;
    lst = &c;
    celula *newhead;

    Pessoa p1,p2,p3,p4,p;
    Pessoa *info_removida;
    int menu = 1;
/*
    p1.idade = 30;
    strcpy(p1.nome, "matheus");
    strcpy(p1.sobnome, "francisco");

    p2.idade = 18;
    strcpy(p2.nome, "mayara");

    p3.idade = 19;
    strcpy(p3.nome, "juca");
*/
    while ( menu != 0)
    {
        printf(
        "\n-----------------------------------------------------\n"
        "Selecione opcao que deseja, veja nosso menu:\n"
        "-----------------\n"
        "0 - Sair \n"
        "1 - Inserir no Inicio\n"
        "3 - exibir \n"
        "2 - Inserir \n"
        "4 - Remover \n"
        "5 - Remover ini\n"
        "6 - Buscar \n"
        "-----------------\n"
        "0 - SAIR DO PROGRAMA.\n"
        "-----------------\n"
        );
        scanf("%d", &menu);
        switch (menu)
        {

            case 0:
                printf("Voce fechou.");
            break;
            case 1:

            break;
            case 2:
              newhead = (inserir(lst, &p));
             break;
              case 3:

            break;
             case 4:
                printar(lst);
             break;
            default:
                printf("Opcao inexistente.");
             break;
            }
       }



}
