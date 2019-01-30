/*
Fila
*/

#include <stdio.h>
#include <stdlib.h>

#define T_FILA 100

typedef struct fila {
  int itens[T_FILA];
  int inicio, fim;
} t_fila;

int menu();
void criaFila(t_fila *fila);
int retiraItemFila(t_fila *fila);
void inserirItemFila(t_fila *fila, int item);
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
              inserirItemFila(&isabel, numero);
              break;
      case 2: if (isabel.inicio != isabel.fim)
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
  fila->inicio = fila->fim = 0;
}

int retiraItemFila(t_fila *fila)
{
  return fila->itens[fila->inicio++];
}

void inserirItemFila(t_fila *fila, int item)
{
  fila->itens[fila->fim++] = item;
}

void mostrarFila(t_fila fila)
{
  int i;
  for (i = fila.inicio; i < fila.fim; i++)
    printf("ISABEL[%d]....: %d\n", i, fila.itens[i]);
}
