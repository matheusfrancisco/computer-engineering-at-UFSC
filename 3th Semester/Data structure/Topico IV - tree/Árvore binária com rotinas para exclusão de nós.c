#include <stdio.h>
#include <stdlib.h>

//#define EU 1

typedef struct noh {
  int valor;
  struct noh *esquerda, *direita;
} no;

no *criaNoh(int valor);
void inserirNoh(no **arvore, no* novo);
no* localizarNoh(no *arvore, int valor);
void mostrarDadosNoh(no *noh);
void mostrarPreOrdem(no *arvore);
int menu();
no* sucessor(no* no);
no* antecessor(no* no);
void antecessorWirth(no* noh, no** esquerda);
void removeNoh(no** arvore, int valor);
void removeNoh2(no** arvore, int valor);
void converteVetorToArvore(no**arvore, int *v);

// Função principal
int main()
{
  no *arvore = NULL, *aux;
  int valor;
  int v[10] = {35,30,50,22,33,42,27,34,51,53};

  do {
    switch (menu()) {

      case 1:
              #ifdef EU
              printf("Valor? ");
              scanf("%d", &valor);
              inserirNoh(&arvore, criaNoh(valor));
              #endif
              #ifndef EU
              converteVetorToArvore(&arvore, v);
              #endif
              break;

      case 2: mostrarPreOrdem(arvore);
              break;

      case 3: printf("Qual o valor do noh? ");
              scanf("%d", &valor);
              aux = localizarNoh(arvore, valor);
              if (aux) {
                mostrarDadosNoh(aux);
              }
              else {
                printf("\n%d nao cadastrado!\n\n", valor);
              }
              break;

      case 4: printf("Qual o valor do noh? ");
              scanf("%d", &valor);
              //removeNoh(&arvore, valor);
              removeNoh2(&arvore, valor);
              break;

      case 5: printf("Qual o valor do noh? ");
              scanf("%d", &valor);
              aux = localizarNoh(arvore, valor);
              if (aux) {
                aux = antecessor(aux);
                if (aux)
                  mostrarDadosNoh(aux);
                else
                  printf("\nNoh sem antecessor!\n\n", valor);
              }
              else {
                printf("\nNao encontrado!\n\n", valor);
              }
              break;

      case 6: printf("Qual o valor do noh? ");
              scanf("%d", &valor);
              aux = localizarNoh(arvore, valor);
              if (aux) {
                aux = sucessor(aux);
                if (aux)
                  mostrarDadosNoh(aux);
                else
                  printf("\nNoh sem sucessor!\n\n", valor);
              }
              else {
                printf("\nNao encontrado!\n\n", valor);
              }
              break;

      case 7: printf("Sair do programa\n");
              exit(0);

    }
  } while (1);

  return 0;
}

no *criaNoh(int valor)
{
  no *novo;

  novo = (no*)malloc(sizeof(no));
  novo->esquerda = novo->direita = NULL;
  novo->valor = valor;

  return novo;
}

void inserirNoh(no **arvore, no* novo)
{
  if (!*arvore) {
    *arvore = novo;
  }
  else if (novo->valor < (*arvore)->valor) {
    inserirNoh(&(*arvore)->esquerda, novo);
  }
  else if (novo->valor > (*arvore)->valor) {
    inserirNoh(&(*arvore)->direita, novo);
  }
}

no* localizarNoh(no *arvore, int valor)
{
  if (!arvore) {
    return NULL;
  }
  else if (valor > arvore->valor) {
    return localizarNoh(arvore->direita, valor);
  }
  else if (valor < arvore->valor) {
    return localizarNoh(arvore->esquerda, valor);
  }
  else if (valor == arvore->valor){
    return arvore;
  }
}

void mostrarDadosNoh(no *noh)
{
  printf("Endereco do no...: %p\n", noh);
  printf("Valor do noh.....: %d\n", noh->valor);
  printf("Noh esquerda.....: %p\n", noh->esquerda);
  printf("Noh direita......: %p\n\n", noh->direita);
}

void mostrarPreOrdem(no *arvore)
{
  if (arvore) {
    mostrarDadosNoh(arvore);
    mostrarPreOrdem(arvore->esquerda);
    mostrarPreOrdem(arvore->direita);
  }
}

int menu()
{
  int opc;

  printf("1.Inserir novo noh\n");
  printf("2.Mostrar nohs arvore\n");
  printf("3.Localizar noh\n");
  printf("4.Excluir noh\n");
  printf("5.Mostrar antecessor\n");
  printf("6.Mostrar sucessor\n");
  printf("7.Sair do programa\n");
  printf("?: ");
  scanf("%d", &opc);

  return opc;
}

no* sucessor(no* no)
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

no* antecessor(no* no)
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

void antecessorWirth(no* noh, no** esquerda)
{
  no* aux = NULL;

  if ((*esquerda)->direita) {
    antecessorWirth(noh, &(*esquerda)->direita);
  }
  else {
    noh->valor = (*esquerda)->valor;
    aux = *esquerda;
    *esquerda = (*esquerda)->esquerda;
    free(aux);
  }
}

void removeNoh(no** arvore, int valor)
{
  no *aux = NULL;

  if (arvore) {

    // Localizar noh a ser excluído
    if (valor > (*arvore)->valor)
      removeNoh(&(*arvore)->direita, valor);
    else if (valor < (*arvore)->valor)
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
  }
}

void removeNoh2(no** arvore, int valor)
{
  no *aux = NULL, *aux2 = NULL, *aux3 =NULL;

  if (arvore) {

    // Localizar noh a ser excluído
    aux2 = localizarNoh(*arvore, valor);
    if(!aux2)
      return;
    // Achou o noh a ser excluído
    else if (!aux2->direita) {
      aux = aux2;
      aux2 = aux2->esquerda;
      free(aux);
    }
    else if (!aux2->esquerda) {
      aux = aux2;
      aux2 = aux2->direita;
      free(aux);
    }
    else {
      //antecessorWirth(aux2, &aux2->esquerda);

      aux = antecessor(aux2);
      aux2->valor = aux->valor;
      //aux3
      aux = aux->esquerda;
      free(aux);
    }
  }
}

void converteVetorToArvore(no**arvore, int *v){
  int i;
  for (i = 0; i<10; i++)
    inserirNoh(arvore, criaNoh(v[i]));
}
