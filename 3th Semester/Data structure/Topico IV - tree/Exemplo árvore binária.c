/*
Árvore de busca binária
*/

#include <stdio.h>
#include <stdlib.h>

typedef struct noh {
  int dado;
  struct noh *esquerda, *direita;
} noh;

noh *criaNoh(int numero);
void insereArvore(noh** raiz, noh* folha);
void printFolha(noh* folha);
void mostrarEmOrdem(noh* raiz);
void mostrarPreOrdem(noh* raiz);
void mostrarPosOrdem(noh* raiz);
int menu();
noh *localizarNoh(noh* raiz, int numero);

int main()
{
  noh *raiz = NULL;
  int numero;
  noh *aux;

  while (1) {
    switch (menu()) {
      case 1: printf("Numero? ");
              scanf("%d", &numero);
              insereArvore(&raiz, criaNoh(numero));
              break;
      case 2: mostrarEmOrdem(raiz);
              break;
      case 3: mostrarPreOrdem(raiz);
              break;
      case 4: mostrarPosOrdem(raiz);
              break;
      case 5: printf("Numero? ");
              scanf("%d", &numero);
              aux = localizarNoh(raiz, numero);
              printf("aux...:%d", aux->dado);
              break;
      case 6: exit(0);
    }
  }

  return 0;
}

noh *criaNoh(int numero)
{
  noh *no;
  no = (noh*)malloc(sizeof(noh));
  no->dado = numero;
  no->esquerda = no->direita = NULL;
  return no;
}

void insereArvore(noh** raiz, noh* folha)
{
  if (!*raiz) {
    *raiz = folha;
  }
  else if (folha->dado > (*raiz)->dado) {
    insereArvore(&(*raiz)->direita, folha);
  }
  else if (folha->dado < (*raiz)->dado) {
    insereArvore(&(*raiz)->esquerda, folha);
  }
}

void printFolha(noh* folha)
{
  printf("Noh............: %p\n", folha);
  printf("Dado...........: %d\n", folha->dado);
  printf("Esquerda.......: %p\n", folha->esquerda);
  printf("Direita........: %p\n", folha->direita);
}

void mostrarEmOrdem(noh* raiz)
{
  if (raiz) {
    mostrarEmOrdem(raiz->esquerda);
    printFolha(raiz);
    mostrarEmOrdem(raiz->direita);
  }
}

void mostrarPreOrdem(noh* raiz)
{
  if (raiz) {
    printFolha(raiz);
    mostrarEmOrdem(raiz->esquerda);
    mostrarEmOrdem(raiz->direita);
  }
}

void mostrarPosOrdem(noh* raiz)
{
  if (raiz) {
    mostrarEmOrdem(raiz->esquerda);
    mostrarEmOrdem(raiz->direita);
    printFolha(raiz);
  }
}

int menu()
{
  int opc;
  printf("1.Inserir dado na arvore\n");
  printf("2.Mostrar dados em Em-Ordem\n");
  printf("3.Mostrar dados em Pre-Ordem\n");
  printf("4.Mostrar dados em Pos-Ordem\n");
  printf("5.Localizar\n");
  printf("6.Sair do programa\n");
  printf("-------------> ");
  scanf("%d", &opc);
  return opc;
}

noh *localizarNoh(noh* raiz, int numero)
{
    if (raiz) {
    if(raiz->dado > numero)
    localizarNoh(raiz->esquerda, numero);
    if (raiz->dado == numero)
    return raiz;
    if(raiz->dado < numero)
    localizarNoh(raiz->direita, numero);
  }
  return raiz;
}
