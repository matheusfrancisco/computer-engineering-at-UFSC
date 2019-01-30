#include <stdio.h>
#include <stdlib.h>

#define T 8

typedef struct dado{
int info;
struct dados *ant, *prox;
} t_dado;

typedef struct lista
{
  t_dado *primeiro;
  int quantidade;
} t_lista;

void mostraVetor(t_dado *primeiro);
void shellsort(t_lista *lista);
void converteParaLista(t_lista *lista, int *v);
t_dado *retornaInfo(t_lista lista, int id);

int main()
{
  int vetor[T] = {3, 4, 1, 12, 9, 7, 21, 11};
  t_lista lista;
  lista.primeiro = NULL;
  lista.quantidade = 0;

  converteParaLista(&lista, vetor);
  mostraVetor(lista.primeiro);
  shellsort(&lista);
  mostraVetor(lista.primeiro);

  return 0;
}

// Funções auxiliares
void mostraVetor(t_dado *primeiro)
{
  t_dado *i;
  printf("Teste");
  printf("\n\n");
  for (i = primeiro; i != NULL; i = i->prox) {
    printf("%d\t", i->info);
  }
  printf("\n\n");
}

t_dado *retornaInfo(t_lista lista, int id)
{
  int i;
  for(i = 1; i <= id; i++)
  {
    lista.primeiro = lista.primeiro->prox;
  }
  return lista.primeiro;
}

void shellsort (t_lista *lista) //PROBLEMA
{
  int i, j, h = 7;
  t_dado *x;

  do {
    h = h * 3 + 1;
  } while (h < lista->quantidade);

  do {
    h = h / 3;
    for (i = h; i < lista->quantidade; i++) {
      x = retornaInfo(*lista, i);
      j = i;

      while (retornaInfo(*lista, j-h)->info > x->info) {
        retornaInfo(*lista, j)->info = retornaInfo(*lista, j-h)->info;
        j -= h;
        printf("J:%d I:%d\n", j, i);

        if (j < h)
          break;
      }
      retornaInfo(*lista, j)->info = x->info;
      //PROBLEMA
      mostraVetor(lista->primeiro);
    }
  } while (h != 1);
}

void converteParaLista(t_lista *lista, int *v)
{
  int i;
  t_dado *aux;
  for(i = 0; i < T; i++)
  {
    aux = (t_dado *)malloc(sizeof(t_dado));
    aux->info = v[i];
    aux->prox = aux->ant = NULL;
    if(lista->primeiro)
    {
      aux->prox = lista->primeiro;
      lista->primeiro->ant = aux;
    }
    lista->primeiro = aux;
    lista->quantidade++;
  }
}
