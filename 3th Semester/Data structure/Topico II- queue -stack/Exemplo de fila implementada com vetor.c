/*
Filas
*/

#include <stdio.h>
#include <stdlib.h>

#define TAM_FILA 100

typedef struct fila {
  char letras[TAM_FILA];
  int primeiro, ultimo;
} t_fila;

typedef char boolean;

void criaFila(t_fila *fila);
void inserirFila(t_fila *fila, char letra);
char retirarFila(t_fila *fila);
void mostrarFila(t_fila fila);
int menu();
boolean filaVazia(t_fila fila);


int main()
{
  t_fila fLetras;
  char letra;
  criaFila(&fLetras);

  for (;;) {
    switch (menu()) {
      case 1: printf("Qual letra? ");
              fflush(stdin);
              scanf("%c", &letra);
              inserirFila(&fLetras, letra);
              break;

      case 2: if (!filaVazia(fLetras)) {
                printf("Item retirado..: %c\n", retirarFila(&fLetras));
              }
              else {
                printf("A fila esta vazia!!!\n");
              }
              break;

      case 3: mostrarFila(fLetras);
              break;

      case 4: printf("Tchau!!!\n");
              exit(0);
    }
  }

  return 0;
}

void criaFila(t_fila *fila)
{
  // Fila vazia
  fila->primeiro = fila->ultimo = 0;
}

void inserirFila(t_fila *fila, char letra)
{
  fila->letras[fila->ultimo++] = letra;
}

char retirarFila(t_fila *fila)
{
  return fila->letras[fila->primeiro++];
}

void mostrarFila(t_fila fila)
{
  int i;
  for (i = fila.primeiro; i < fila.ultimo; i++)
    printf("FILA[%d]...: %c\n", i, fila.letras[i]);
}

int menu()
{
  int opc;
  printf("1.Inserir item na fila\n");
  printf("2.Retirar item da fila\n");
  printf("3.Mostrar fila\n");
  printf("4.Sair do programa\n");
  printf("?: ");
  scanf("%d", &opc);
  return opc;
}

boolean filaVazia(t_fila fila)
{
  if (fila.primeiro == fila.ultimo)
    return 1;  // fila vazia
  return 0;  // fila nao esta vazia
}
