/*
Lista encadeada
*/
#include <stdio.h>
#include <stdlib.h>

struct ponto {
  int x;
  int y;
  struct ponto *prox;
};

int menu();
struct ponto *criaCelula(int x, int y);
void inserirDadoLista(struct ponto **lista, struct ponto *novo);
void mostrarLista(struct ponto *lista);

int main()
{
  struct ponto *lista = NULL;
  int x, y;

  while (1) {

    switch (menu()) {

      case 1: printf("Valor de x? ");
              scanf("%d", &x);
              printf("Valor de y? ");
              scanf("%d", &y);
              inserirDadoLista(&lista, criaCelula(x, y));
              break;

      case 2: mostrarLista(lista);
              break;

      case 3: exit(0);

    }

  }

  return 0;
}

int menu()
{
  int opc;

  printf("1.Inserir item na lista\n");
  printf("2.Mostrar itens da lista\n");
  printf("3.Sair do programa\n");
  printf("?: ");
  scanf("%d", &opc);

  return opc;
}

struct ponto *criaCelula(int x, int y)
{
  struct ponto *p;
  p = (struct ponto*)malloc(sizeof(struct ponto));
  p->x = x;
  p->y = y;
  p->prox = NULL;

  return p;
}

void inserirDadoLista(struct ponto **lista, struct ponto *novo)
{
  novo->prox = *lista;
  *lista = novo;
}

void mostrarLista(struct ponto *lista)
{
  printf("\n");
  while (lista) {
    printf("Valor de x...: %d\n", lista->x);
    printf("Valor de y...: %d\n", lista->y);
    printf("Endereco.....: %p\n", lista);
    printf("Proximo......: %p\n", lista->prox);
    lista = lista->prox;
    printf("\n");
  }oi
}
