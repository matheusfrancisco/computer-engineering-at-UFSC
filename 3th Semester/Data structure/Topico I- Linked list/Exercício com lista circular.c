/*
Lista circular
*/

#include <stdio.h>
#include <stdlib.h>

typedef struct dado {
  int x, y;
  struct dado *prox;
} t_dado;

t_dado *criaCelula(int x, int y);
void insereLista(t_dado **lista, t_dado *novo);
void mostrarLista(t_dado *lista);

int main()
{
  t_dado *lista = NULL;
  int x, y;

  while (1) {

    switch (menu()) {

      case 1: printf("Valor de x? ");
              scanf("%d", &x);
              printf("Valor de y? ");
              scanf("%d", &y);
              insereLista(&lista, criaCelula(x, y));
              break;
      case 2: mostrarLista(lista);
              break;
      case 3: printf("Saindo...\n\n");
              exit(0);

    }

  }

  return 0;
}

t_dado *criaCelula(int x, int y)
{
  t_dado *novo;
  novo = (t_dado*)calloc(sizeof(t_dado), 1);
  novo->x = x;
  novo->y = y;
  novo->prox = novo;
  return novo;
}

void insereLista(t_dado **lista, t_dado *novo)
{
  t_dado *aux = *lista;
  if (*lista) {
    novo->prox = *lista;
    for (aux; aux->prox != *lista; aux = aux->prox);
    aux->prox = novo;
  }
  *lista = novo;
}

void mostrarLista(t_dado *lista)
{
  t_dado *aux = lista;
  do {
    printf("Valor de x...: %d\n", aux->x);
    printf("Valor de y...: %d\n\n", aux->y);
    aux = aux->prox;
  } while (aux != lista);
}

int menu()
{
  int opc;
  printf("1.Inserir na lista\n");
  printf("2.Mostrar lista\n");
  printf("3.Sair do programa\n");
  printf("?: ");
  scanf("%d", &opc);
  return opc;
}

t_dado* localizarItem(t_dado *lista, int mul)
{
  t_dado *aux = lista;
  do {
    if (aux->x == mul)
      return aux;
    aux = aux->prox;
  } while (aux != lista);
  return NULL;
}
