#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define MAX_NOME 50


/* na hora de remover do inicio esta dando erro
na hora de imprimir
e na hora de passar variavel esta clonando a variavel

 */


/* Dados */
typedef struct pessoa{
     char nome[MAX_NOME];
     int idade;
}Pessoa;

/*celula lista*/
typedef struct Lista{
    Pessoa *elemento;
    struct Lista *prox;
}celula;

typedef celula *lista;

/*Funcoes */

celula *Inserir_inicio(celula **topo, Pessoa *p ){
     celula *novo;
  novo = malloc(sizeof(celula));
  novo->elemento= p;
  if(*topo == NULL){
    novo->prox = NULL;
    *topo = novo;
    return novo;
  }
  else{
  novo->prox =*topo;
  *topo=novo;
  return novo;
}
}

void inserir(celula *topo, Pessoa *p){
    celula *nova;
    nova = malloc(sizeof(celula));
    nova->elemento = p;
    nova->prox = topo->prox;
    topo->prox = nova;


}

void remover_ini (celula **topo)
{

}


void remover(celula **topo){
    celula *lixo;
    lixo = (*topo)->prox;
    (*topo)->prox = lixo->prox;
    free(lixo);

}




void printar(celula *topo){
 celula *aux;
  aux = topo;
  if(aux == NULL){
    printf("vazio");
  }else{
  do{

   printf("Nome: %s | Idade: %d \n",aux->elemento->nome, aux->elemento->idade);
            printf("-------------------------- \n");
  aux= aux->prox;

  }while(aux!=NULL);
  }
}



 main(){
  lista topo =NULL;
  Pessoa p1,p2,p3,p4,p;
    Pessoa *info_removida;




    p1.idade = 30;
    strcpy(p1.nome, "matheus");

    p2.idade = 18;
    strcpy(p2.nome, "mayara");

    p3.idade = 19;
    strcpy(p3.nome, "juca");







 int menu;

while ( menu != 0) {
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
        "-----------------\n"
        "0 - SAIR DO PROGRAMA.\n"
        "-----------------\n"
        );
        scanf("%d", &menu);
        switch (menu){

            case 0:
                printf("Voce fechou.");
            break;
            case 1:

                Inserir_inicio(&topo, &p1);
                Inserir_inicio(&topo, &p2);
                Inserir_inicio(&topo, &p3);



            break;

             case 2:
                inserir(&topo, &p);
            break;
            case 3:

                printar(topo);
            break;
            case 4:
                remover_ini(topo);
           break;
            case 5:
                remover(topo);
                break;
            default:
                printf("Opcao inexistente.");
                break;
            }
    }

}






