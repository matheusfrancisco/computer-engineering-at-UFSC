/*
Algoritmo Insertion Sort
*/

#include <stdio.h>
#include <stdlib.h>

#define T 10
struct valor{
  int valor;
  struct valor *prox, *ant;

};

void mostraVetor(int *vetor);
void insertionSort(int *vetor);
struct valor* criaValor(int valor);
void inserenaLista(struct valor **lista, struct valor *novo);

struct valor* criaValor(int valor){
  struct valor *v;
  v = (struct valor*) malloc(sizeof(struct valor));
  v->valor;
  v->ant = v->prox = NULL;
  return v;
}

void inserenaLista(struct valor **lista, struct valor *novo){
  struct valor *aux;
  if (!*lista)
    *lista = novo;
  else{
    while (aux->prox)
      aux=aux->prox;
    aux->prox = novo;
    novo->ant = aux;
  }
}

int main()
{
  //int vetor[T] = {9, 10, 8, 7, 6, 5, 4, 3, 1, 2};

  printf("Vetor antes da ordenacao: \n");
  mostraVetor(vetor);
  printf("Vetor apos da ordenacao: \n");
  insertionSort(vetor);

  return 0;
}

void mostraVetor(struct valor *lista)
{
  printf("\n\n");
  while(lista){
    printf("%d\t", lista->valor);
  }
  printf("\n\n");
}

void insertionSort(struct valor **lista)
{
  struct valor *aux = *lista, *j, *escolhido;
  int i, j, comparacoes = 0;

  while(aux){
    escolhido = aux->prox;
    j = aux;
    while ((j) && j->valor > escolhido->valor) {
      aux->ant->valor = escolhido->valor;
      aux->prox->valor = aux->valor;
      j= j->ant;
    }
    aux->prox->valor= escolhido->valor;
    aux = aux->prox;
  }
  mostraVetor(*lista);
  printf("Quantidade de comparacoes...: %d\n\n", comparacoes);

}
