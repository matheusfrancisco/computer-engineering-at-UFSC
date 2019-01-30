/*
Árvore binária
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct pessoa{
  char nome[25];
  int idade;
  char endereco[50];
  struct pessoa *esquerda, *direita;
}pessoa;

pessoa *criaPessoa(char nome[25], int idade, char endereco[50]);
void insereArvore( pessoa **raiz, pessoa *folha);
void mostraNoh(pessoa *noh);
void mostraArvore(pessoa *raiz);
void mostraPreOrdem(pessoa *raiz);
void mostrarEDR(pessoa *raiz);
int menu();
pessoa *localizaNoh(pessoa *arvore, char nome[25]);

int main()
{
  char nome[25];
  char endereco[50];
  int idade;
  pessoa *raiz=NULL;
  pessoa *aux;
  while(1)
  {
    switch(menu())
    {
      case 1: printf("\nIdade:");
              scanf("%i",&idade);
              printf("\nNome:");
              scanf("%s",nome);
              printf("\nEndereco:");
              scanf("%s",endereco);
              insereArvore(&raiz,criaPessoa(nome,idade,endereco));
              break;
      case 2: mostraArvore(raiz);
              break;
      case 3: mostraPreOrdem(raiz);
              break;
      case 4: mostrarEDR(raiz);
              break;
      case 5: printf("Valor desejado na consulta: ");
              scanf("%s",nome);
              aux = localizaNoh(raiz,nome);
              mostraNoh(aux);
              break;
      case 6: return 0;
    }
  }

  return 0;
}

int menu()
{
  int opc;
  printf("1-INSERIR \n");
  printf("2-MOSTRAR EM ORDEM\n");
  printf("3-MOSTRAR EM PRE ORDEM\n");
  printf("4-MOSTRAR EDR\n");
  printf("5-LOCALIZAR\n");
  printf("6-SAIR\n");
  printf("?:");
  scanf("%i",&opc);
  return opc;
}

pessoa *criaPessoa(char nome[25], int idade, char endereco[50]){
    pessoa *p = (pessoa *) malloc (sizeof(pessoa));
    p->idade = idade;
    strcpy(p->nome, nome);
    strcpy(p->endereco, endereco);
    p->esquerda = p->direita = NULL;
    return p;
}


void insereArvore( pessoa **raiz, pessoa *folha)
{
  if(!*raiz)
  {
    *raiz = folha;
  }

  else if ((strcmp((*raiz)->nome,folha->nome))>0)
      insereArvore(&(*raiz)->esquerda, folha);
  else if ((strcmp((*raiz)->nome, folha->nome))<0)
      insereArvore(&(*raiz)->direita, folha);
}

void mostraNoh(pessoa *noh)
{
  printf("endereco noh...........: %p\n",noh);
  printf("endereco noh a direita.: %p\n",noh->direita);
  printf("endereco noh a esquerda: %p\n",noh->esquerda);
  printf("nome...................: %s\n",noh->nome);
  printf("idade..................: %d\n",noh->idade);
  printf("endereco...............: %s\n\n",noh->endereco);

}
void mostraArvore(pessoa *raiz)
{
  if(raiz){
    mostraArvore(raiz->esquerda);
    mostraNoh(raiz);
    mostraArvore(raiz->direita);
  }
}

void mostraPreOrdem(pessoa *raiz)
{
if(raiz)
  {
  mostraNoh(raiz);
  mostraPreOrdem(raiz->esquerda);
  mostraPreOrdem(raiz->direita);
  }
}

void mostrarEDR(pessoa* raiz)
{
  if(raiz)
  {
    mostrarEDR(raiz->esquerda);
    mostrarEDR(raiz->direita);
    mostraNoh(raiz);
  }
}

pessoa *localizaNoh(pessoa *arvore, char nome[25])
{
  if (arvore)
  {
    if (!strcmp(arvore->nome, nome))
      return arvore;
    else if (strcmp(arvore->nome, nome)>0)
      return localizaNoh(arvore->esquerda,nome);
    else if (strcmp(arvore->nome, nome)<0)
      return localizaNoh(arvore->direita,nome);
    else return NULL;
  }
}
