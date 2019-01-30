

/*
Sintese
   Objetivo: Implementar uma Lista Simplesmente Encadeada

   Entrada : Valores Inteiros.

   Saida   : A busca

   Data : 17/05/2008
*/

#include <stdio.h>
#include <stdlib.h>

/*
   Estrutura  que define a Lista
   Lembrando que a a instrução: struct celulaLista *proximo
   é uma estrutura auto-referenciada, ou seja, neste caso
   é uma estrutura que aponta para a próxima estrutura.
*/
typedef struct pessoa{
    char nome[20];
    int idade;
}Pessoa;

typedef struct celulaLista{
   Pessoa *informacao;
   struct celulaLista *proximo;
}celula;

int main(){
   // Declarações
      celula *pLista;
      int opcao = 0;
       Pessoa *p;
       celula *newhead;
   // Funções
      void initLista(celula **pRecebido);
      celula *insertLista(celula **pRecebido);
      celula *buscaListaSimples(celula **pRecebido);
      void removeElementoListaSimples(celula **pRecebido);
      int leValor(int *valorRecebido);
   // Instruções
      pLista = (celula *)malloc(sizeof(struct celulaLista));
      initLista(&pLista);
      for(;;){
         printf("\n1 - Inserir : ");
         printf("\n2 - Consultar: ");
         printf("\n3 - Remover");
         printf("\n4 - Sair\n");
         scanf("%d", &opcao);
         opcao = leValor(&opcao);
         switch(opcao)
         {
            case 1:
          newhead = insertLista(&pLista);
          break;
       case 2:
           newhead = buscaListaSimples(&pLista);
          break;
       case 3:
         removeElementoListaSimples(&pLista);
         break;
       case 4:
         exit(0);
        }
     }
     return 0;
}
/*
   Inicialização da Lista Encadeada
*/
void initLista(celula **pRecebido){
   (*pRecebido)->proximo = NULL;
}

/*
   Função para Inserção no Início
*/
celula *insertLista(celula **pRecebido){
   // Declarações
      celula *temporario;
      temporario = (celula *)malloc(sizeof(celula));

   // Instruções
      printf("\nInforme um Valor a ser Inserido : ");
      scanf("%s %d", &temporario->informacao->nome , &temporario->informacao->idade);


      temporario->proximo = (*pRecebido)->proximo;
      (*pRecebido)->proximo = temporario;
}
/*
   Função para Percorrer Elementos
*/
celula *buscaListaSimples(celula **pRecebido){
   // Declarações
      celula *temporario;
   // Instruções
      if((*pRecebido)->proximo == NULL){
         printf("Lista Vazia!\n");
      }
      else{
         temporario = (celula *)malloc(sizeof(celula));
         temporario = (*pRecebido)->proximo;
         while(temporario != NULL){
            printf("Valor : %s %d\n", temporario->informacao->nome , temporario->informacao->idade);
            temporario = temporario->proximo;
         }
      }
}
/*
   Remove Elemento da Cabeça
*/
void removeElementoListaSimples(celula **pRecebido){
   // Declarações
      celula *temporario;
   // Instruções
      if((*pRecebido)->proximo == NULL){
         printf("\nLista Vazia!");
      }
      else{
         temporario = (*pRecebido)->proximo;
         (*pRecebido)->proximo = temporario->proximo;
         free(temporario);
      }
}
/*
   Opção para Validação da Entrada
*/
