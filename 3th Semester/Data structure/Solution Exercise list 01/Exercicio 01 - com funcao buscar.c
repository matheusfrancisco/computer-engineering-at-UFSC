#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define MAX_NOME 50

typedef struct pessoa
{
     char nome[MAX_NOME];
     int idade;
     char sobnome [MAX_NOME];
}Pessoa;


/*celula lista*/
typedef struct Lista
{
    Pessoa *elemento;
    struct Lista *prox;
}celula;

typedef celula *Lista;

void inserir(celula *ptr, Pessoa *p)
{
    if( ptr == NULL)
    {
             printf("Lista vazia ");
        return 0;
    }
  celula *novo;
  novo = malloc(sizeof(celula));
  novo->elemento= p;
  novo->prox = ptr->prox;
  ptr->prox = novo;

}

celula *inserir_inicio(celula **topo, Pessoa *p )
{
     celula *novo;
     novo = malloc(sizeof(celula));
     novo->elemento= p;
     if(*topo == NULL)
     {
         novo->prox = NULL;
         *topo = novo;
         return novo;
     }
     else
     {
         novo->prox =*topo;
         *topo=novo;
         return novo;
     }
}

celula *remover_ini(celula *topo)
{
    celula *lixo = topo;
    if(lixo == NULL)
    {
        printf("Lista vazia");
    }
    else
    {
        topo = topo->prox;
        printf("Elemento a ser excluido: %c", 10);
        printf("Nome: %s | Idade: %d \n",lixo->elemento->nome, lixo->elemento->idade);
        free(lixo);
    }
    return topo;

}

void remover(celula *topo)
{
    if(topo->prox == NULL)
    {
        celula *aux;
        aux = topo->prox;
        free(topo);
    }
    celula *lixo;
    lixo = topo->prox;
    topo->prox = lixo->prox;
    free(lixo);
}

void printar(celula *topo)
{
    celula *aux = topo;
    if(aux == NULL)
    {
         printf("vazio");
    }
    else
    {
          do
          {
                 printf("Nome: %s | Idade: %d \n",aux->elemento->nome, aux->elemento->idade);
                 printf("-------------------------- \n");
                 aux= aux->prox;

          }while(aux != NULL);
    }
}

celula *Buscar(Lista lst, Pessoa x){
    celula *p = lst->prox;
    while ((p != NULL) && (p->elemento->sobnome != x.nome)){
        printf("%s",p->elemento->sobnome);
        p = p->prox;
    }

    return p;
}

main()
{
    Lista topo = NULL;
    Pessoa p1,p2,p3,p4,p;
    Pessoa *info_removida;
    int menu = 1;

    p1.idade = 30;
    strcpy(p1.nome, "matheus");
    strcpy(p1.sobnome, "francisco");

    p2.idade = 18;
    strcpy(p2.nome, "mayara");

    p3.idade = 19;
    strcpy(p3.nome, "juca");

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
                inserir_inicio(&topo, &p1);
                inserir_inicio(&topo, &p2);
                inserir_inicio(&topo, &p3);
            break;
            case 2:
                inserir(topo, &p1);
            break;
            case 3:
                printar(topo);
            break;
            case 4:
              topo = remover_ini(topo);
            break;
            case 5:
                remover(topo);
            break;
            case 6:
                topo = (Buscar(topo, p1));

            break;
            default:
                printf("Opcao inexistente.");
             break;
            }
       }
}


