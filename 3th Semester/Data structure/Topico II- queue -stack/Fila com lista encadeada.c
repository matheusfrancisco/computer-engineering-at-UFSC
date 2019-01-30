/*
Fila com lista encadeada
*/

#include <stdio.h>
#include <stdlib.h>

struct dado {
  int x;
  struct dado *prox;
};

typedef struct fila {
  struct dado* itens;
  struct dado* fim;
} t_fila;

int menu();
void criaFila(t_fila *fila);
struct dado* criaCelula(int numero);
int retiraItemFila(t_fila *fila);
void inserirItemFila(t_fila *fila, struct dado* novo);
void mostrarFila(t_fila fila);

int main()
{
  t_fila isabel;
  criaFila(&isabel);
  int numero;

  for (;;) {
    switch (menu()) {
      case 1: printf("Qual numero? ");
              scanf("%d", &numero);
              inserirItemFila(&isabel, criaCelula(numero));
              break;
      case 2: if (isabel.itens)
                printf("Item....: %d\n", retiraItemFila(&isabel));
              else
                printf("Fila vazia!\n");
              break;
      case 3: mostrarFila(isabel);
              break;
      case 4: printf("Tchau!!!\n");
              exit(0);
    }
  }

  return 0;
}

int menu()
{
  int opc;
  printf("1.Inserir item na fila\n");
  printf("2.Retirar item da fila\n");
  printf("3.Mostrar fila\n");
  printf("4.Sair do programa\n");
  printf("....: ");
  scanf("%d", &opc);
  return opc;
}

void criaFila(t_fila *fila)
{
  fila->itens = fila->fim = NULL;
}

struct dado* criaCelula(int numero)
{
  struct dado* novo;
  novo = (struct dado*)malloc(sizeof(struct dado));
  novo->prox = NULL;
  novo->x = numero;
  return novo;
}

int retiraItemFila(t_fila *fila)
{
  struct dado *aux = fila->itens;
  fila->itens = fila->itens->prox;
  int numero = aux->x;
  free(aux);
  return numero;
}

void inserirItemFila(t_fila *fila, struct dado* novo)
{
  if (!fila->itens) {
    fila->itens = novo;
  }
  else {
    fila->fim->prox = novo;
  }
  fila->fim = novo;
}

void mostrarFila(t_fila fila)
{
  struct dado* i;
  int j = 0;
  for (i = fila.itens; i != NULL; i = i->prox)
    printf("ISABEL[%d]....: %d\n", j++, i->x);
}
