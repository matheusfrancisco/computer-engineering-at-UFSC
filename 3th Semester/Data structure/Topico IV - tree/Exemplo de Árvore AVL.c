/*
Árvore AVL

Criada em 1962 por Adelson-Velsky-Landis.

Obedece todas as propriedades de uma árvore binária e em que cada nó apresenta diferença de
altura entre as sub-árvores direita e esquerda de 1, 0 e -1.

Se a diferença de altura entre as sub-árvores de um nó é maior que 1 ou menor que -1, a
árvore está desbalanceada e haverá uma rotação.


As rotações são:

- simples a direita
- simples a esquerda
- dupla (direite e depois esquerda)
- dupla (esquerda e depois direita)

*/

#include <stdio.h>
#include <stdlib.h>

#define T      10
#define true   1
#define false  0
#define AUTO   true

struct noh {
  int chave;
  int altura;
  struct noh *esquerda, *direita;
};

typedef struct noh noh;

// Funcoes auxliares
int menu();
noh* criaNovoNoh(int valor);
void insereNovoNoh(noh** arvore, noh* novo);
void mostraEmOrdem(noh* arvore);
void mostraPreOrdem(noh* arvore);
void mostraPosOrdem(noh* arvore);
noh* localizaNoh(noh* arvore, int valor);
noh* sucessor(noh* no);
noh* antecessor(noh* no);
void removeNoh(noh** arvore, int valor);
void antecessorWirth(noh* no, noh** esquerda);
void vetorToarvore(int *v, noh** arvore);
void mostrarNoh(noh* no);

int calculaAltura(noh *no);
int maior(int a, int b);
int altura(noh* no);
void ajustarAlturaArvore(noh* no);
int fatorBalanceamento(noh* arvore);
noh* rotacaoDireita(noh* arvore);
noh* rotacaoEsquerda(noh* arvore);
noh* rotacaoEsquerdaDireita(noh* arvore);
noh* rotacaoDireitaEsquerda(noh* arvore);
void balancearArvore(noh** arvore);


// Funcao principal
int main()
{
  noh* arvore = NULL; // Árvore vazia
  noh* aux = NULL;
  int valor;

  int vetor[T] = {3, 50, 6, 12, 23, 9, 100, 3, 11, 15};

  #if AUTO
    vetorToarvore(vetor, &arvore);
  #endif

  do {

    switch (menu()) {

      case 1: printf("Valor? ");
              scanf("%d", &valor);
              insereNovoNoh(&arvore, criaNovoNoh(valor));
              break;

      case 2: mostraEmOrdem(arvore);
              break;

      case 3: mostraPreOrdem(arvore);
              break;

      case 4: mostraPosOrdem(arvore);
              break;

      case 5: printf("Valor? ");
              scanf("%d", &valor);
              aux = localizaNoh(arvore, valor);
              if (aux) {
                aux = sucessor(aux);
                if (aux) {
                  printf("O sucessor eh %d\n", aux->chave);
                }
                else {
                  printf("O sucessor eh NULL\n");
                }
              }
              else
                printf("Noh nao encontrado!\n");
              break;

      case 6: printf("Valor? ");
              scanf("%d", &valor);
              aux = localizaNoh(arvore, valor);
              if (aux) {
                aux = antecessor(aux);
                if (aux) {
                  printf("O antecessor eh %d\n", aux->chave);
                }
                else {
                  printf("O antecessor eh NULL\n");
                }
              }
              else
                printf("Noh nao encontrado!\n");
              break;

      case 7: printf("Valor? ");
              scanf("%d", &valor);
              aux = localizaNoh(arvore, valor);
              if (aux)
                printf("Noh encontrado!\n");
              else
                printf("Noh nao encontrado!\n");
              break;

      case 8: printf("Valor? ");
              scanf("%d", &valor);
              removeNoh(&arvore, valor);
              break;

      case 9: printf("Valor? ");
              scanf("%d", &valor);
              aux = localizaNoh(arvore, valor);
              if (aux)
                printf("A altura do noh %d eh %d\n", aux->chave, calculaAltura(aux));
              else
                printf("Noh nao encontrado!\n");
              break;


      case 0: exit(0);

    }

  } while (1);


  return 0;
}

int menu()
{
  int opc;

  printf("1.Inserir novo noh\n");
  printf("2.Mostrar nohs em ordem\n");
  printf("3.Mostrar nohs pre ordem\n");
  printf("4.Mostrar nohs pos ordem\n");
  printf("5.Noh sucessor\n");
  printf("6.Noh antecessor\n");
  printf("7.Localizar noh\n");
  printf("8.Excluir noh\n");
  printf("9.Calcular altura de um noh\n");
  printf("0.Sair do programa\n");
  printf("?: ");
  scanf("%d", &opc);

  return opc;
}

noh* criaNovoNoh(int valor)
{
  noh* novo = (noh*)malloc(sizeof(noh));

  novo->chave = valor;
  novo->altura = 0;
  novo->direita = novo->esquerda = NULL;

  return novo;
}

void insereNovoNoh(noh** arvore, noh* novo)
{
  if (!*arvore)
    *arvore = novo;
  else if (novo->chave > (*arvore)->chave)
    insereNovoNoh(&(*arvore)->direita, novo);
  else if (novo->chave < (*arvore)->chave)
    insereNovoNoh(&(*arvore)->esquerda, novo);

  // Faz o balanceamento da árvore
  balancearArvore(arvore);
}

void mostraEmOrdem(noh* arvore)
{
  if (arvore) {
    mostraEmOrdem(arvore->esquerda);
    mostrarNoh(arvore);
    mostraEmOrdem(arvore->direita);
  }
}

void mostraPreOrdem(noh* arvore)
{
  if (arvore) {
    mostrarNoh(arvore);
    mostraPreOrdem(arvore->esquerda);
    mostraPreOrdem(arvore->direita);
  }
}

void mostraPosOrdem(noh* arvore)
{
  if (arvore) {
    mostraPosOrdem(arvore->esquerda);
    mostraPosOrdem(arvore->direita);
    mostrarNoh(arvore);
  }
}

noh* localizaNoh(noh* arvore, int valor)
{
  if (!arvore)
    return NULL;
  else if (valor > arvore->chave)
    return localizaNoh(arvore->direita, valor);
  else if (valor < arvore->chave)
    return localizaNoh(arvore->esquerda, valor);
  else
    return arvore;
}

noh* sucessor(noh* no)
{
  // Procura o menor elemento da sub-árvore da direita
  if (no->direita) {
    no = no->direita;  // Desloca o ponteiro para a sub-árvore da direita
    while (no->esquerda)
      no = no->esquerda;
    return no;
  }

  return NULL;
}

noh* antecessor(noh* no)
{
  // Procura o maior elemento da sub-árvore da esquerda
  if (no->esquerda) {
    no = no->esquerda;  // Desloca o ponteiro para a sub-árvore da esquerda
    while (no->direita)
      no = no->direita;
    return no;
  }

  return NULL;
}

// Solucao do Niklaus Wirth 1976
void antecessorWirth(noh* no, noh** esquerda)
{
  noh* aux = NULL;

  if ((*esquerda)->direita) {
    antecessorWirth(no, &(*esquerda)->direita);
  }
  else {
    no->chave = (*esquerda)->chave;
    aux = *esquerda;
    *esquerda = (*esquerda)->esquerda;
    free(aux);
  }
}

/*
Mesma função que está implementada no livro:

Projeto de Agoritmos com Implementação em Pascal e C. Nivio Ziviani, 2011.

Está na bibliografia básica da disciplina

*/
void removeNoh(noh** arvore, int valor)
{
  noh *aux = NULL;

  if (arvore) {

    // Localizar noh a ser excluído
    if (valor > (*arvore)->chave)
      removeNoh(&(*arvore)->direita, valor);
    else if (valor < (*arvore)->chave)
      removeNoh(&(*arvore)->esquerda, valor);

    // Achou o noh a ser excluído
    else if (!(*arvore)->direita) {
      aux = *arvore;
      *arvore = (*arvore)->esquerda;
      free(aux);
    }
    else if (!(*arvore)->esquerda) {
      aux = *arvore;
      *arvore = (*arvore)->direita;
      free(aux);
    }
    else {
      antecessorWirth(*arvore, &(*arvore)->esquerda);
    }
    // Faz o balanceamento da árvore
    balancearArvore(arvore);
  }
}

void vetorToarvore(int *v, noh** arvore)
{
  int i;

  for (i = 0; i < T; i++)
    insereNovoNoh(arvore, criaNovoNoh(*(v+i)));
}

void mostrarNoh(noh* no)
{
  printf("Noh endereco...: %p\n", no);
  printf("Noh valor......: %d\n", no->chave);
  printf("Noh altura.....: %d\n", no->altura);
  printf("Filho esquerda.: %p\n", no->esquerda);
  printf("Filho direita..: %p\n\n", no->direita);

}

// Funcoes para balanceamento da arvore AVL

int calculaAltura(noh *no)
{
  int alt_esquerda = 0, alt_direita = 0;
  if (!no) {
    return -1;
  }
  alt_esquerda = calculaAltura(no->esquerda);
  alt_direita = calculaAltura(no->direita);
  if (alt_esquerda > alt_direita) {
    return alt_esquerda + 1;
  }
  else {
    return alt_direita + 1;
  }
}

int maior(int a, int b)
{
  return a > b ? a : b;
}

int altura(noh* no)
{
  if (no)
    return no->altura;
  return -1;
}

void ajustarAlturaArvore(noh* no)
{
   if (no)
     no->altura = 1 + maior(calculaAltura(no->esquerda), calculaAltura(no->direita));
}

int fatorBalanceamento(noh* arvore)
{
   if (arvore)
     return  (altura(arvore->direita) - altura(arvore->esquerda));
   return 0;
}

noh* rotacaoDireita(noh* arvore)
{
   printf("Fazendo uma rotacao direita...\n");
   noh* aux_e = arvore->esquerda;
   noh* aux_d = aux_e->direita;
   aux_e->direita = arvore;
   arvore->esquerda = aux_d;
   ajustarAlturaArvore(arvore->esquerda);
   ajustarAlturaArvore(arvore);
   return aux_e;
}

noh* rotacaoEsquerda(noh* arvore)
{
   printf("Fazendo uma rotacao esquerda...\n");
   noh* aux_d = arvore->direita;
   noh* aux_e = aux_d->esquerda;
   aux_d->esquerda = arvore;
   arvore->direita = aux_e;
   ajustarAlturaArvore(arvore->direita);
   ajustarAlturaArvore(arvore);
   return aux_d;
}


noh* rotacaoEsquerdaDireita(noh* arvore)
{
   //printf("Fazendo uma rotacao esquerda-direita...\n");
   arvore->esquerda = rotacaoEsquerda(arvore->esquerda);
   arvore = rotacaoDireita(arvore);
   return arvore;
}

noh* rotacaoDireitaEsquerda(noh* arvore)
{
   //printf("Fazendo uma rotacao direita-esquerda...\n");
   arvore->direita = rotacaoDireita(arvore->direita);
   arvore = rotacaoEsquerda(arvore);
   return arvore;
}

/*

Fatores de balanceamento:

-------------------------------------------------------------------------------------------
Fator no nó desbalanceado    |  Fator no filho   | Rotação

 2                           |  1                | Rotação simples a esquerda
 2                           |  0                | Rotação simples a esquerda
 2                           | -1                | Rotação dupla com filho a direita e pai a esquerda
-------------------------------------------------------------------------------------------
-2                           |  1                | Rotação dupla com filho a esquerda e pai a direita
-2                           |  0                | Rotação simples a direita
-2                           | -1                | Rotação simples a direita
-------------------------------------------------------------------------------------------

*/

void balancearArvore(noh** arvore)
{
  ajustarAlturaArvore(*arvore);
  if (fatorBalanceamento(*arvore) < -1 && fatorBalanceamento((*arvore)->esquerda) <= 0) {
     *arvore = rotacaoDireita(*arvore);
  }
  else if (fatorBalanceamento(*arvore) > 1 && fatorBalanceamento((*arvore)->direita) >= 0) {
     *arvore = rotacaoEsquerda(*arvore);
  }
  else if (fatorBalanceamento(*arvore) < -1 && (fatorBalanceamento((*arvore)->esquerda) > 0)) {
     *arvore = rotacaoEsquerdaDireita(*arvore);
  }
  else if (fatorBalanceamento(*arvore) > 1 && (fatorBalanceamento((*arvore)->direita) < 0)) {
     *arvore = rotacaoDireitaEsquerda(*arvore);
  }
}
