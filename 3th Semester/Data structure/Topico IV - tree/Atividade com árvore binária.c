/*
Árvores binárias
*/

#include <stdio.h>
#include <stdlib.h>

typedef struct no {
  int numero;
  struct no *esquerda, *direita;
} noh;

noh* criaNoh(int numero);
void inserirNohArvore(noh **arvore, noh* novo);
void mostraDadosNoh(noh *no);
void visitarNohERD(noh *no);  // Em ordem
void visitarNohRED(noh *no);  // Pré-ordem
void visitarNohED(noh *no);  // Pós-ordem
noh *localizaNoh(noh *arvore, int numero);

int main()
{
  noh* arvore = NULL;


  return 0;
}

noh* criaNoh(int numero)
{
  noh *novo;
  novo = (noh*)malloc(sizeof(noh));
  novo->numero = numero;
  novo->esquerda = novo->direita = NULL;
  return novo;
}

void inserirNohArvore(noh **arvore, noh* novo)
{
  if (!*arvore) {
    *arvore = novo;
  }
  else if (novo->numero > (*arvore)->numero) {
    inserirNohArvore(&(*arvore)->direita, novo);
  }
  else if (novo->numero < (*arvore)->numero) {
    inserirNohArvore(&(*arvore)->esquerda, novo);
  }
}

void mostraDadosNoh(noh *no)
{
  printf("Onde estou.....................: %p\n", no);
  printf("Quem sou.......................: %d\n", no->numero);
  printf("Quem eh meu filho da esquerda..: %p\n", no->esquerda);
  printf("Quem eh meu filho da direita...: %p\n\n", no->direita);
}

void visitarNohERD(noh *no)
{
  if (no) {
    visitarNohERD(no->esquerda);
    mostraDadosNoh(no);
    visitarNohERD(no->direita);
  }
}

void visitarNohRED(noh *no)
{
  if (no) {
    mostraDadosNoh(no);
    visitarNohRED(no->esquerda);
    visitarNohRED(no->direita);
  }
}

void visitarNohEDR(noh *no)
{
  if (no) {
    visitarNohEDR(no->esquerda);
    visitarNohEDR(no->direita);
    mostraDadosNoh(no);
  }
}

noh *localizaNoh(noh *arvore, int numero){
  if (arvore){
    if (arvore->numero == numero)return arvore;
    else if (arvore->numero > numero)
    return localizaNoh(arvore->direita, numero);
    else if (arvore->numero < numero)
    return localizaNoh(arvore->esquerda, numero);
    else return NULL;
  }
}
