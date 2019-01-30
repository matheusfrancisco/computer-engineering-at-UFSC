/*
Pilha com vetor
*/

#include <stdio.h>
#include <stdlib.h>

#define T 100

typedef struct pilha {
  int v[T];
  int topo;
} t_pilha;

void inicializaPilha(t_pilha *pilha);
void inserirItemPilha(t_pilha *pilha, int item);
int retirarItemPilha(t_pilha *pilha);
void mostrarPilha(t_pilha pilha);
int menu();

int main()
{
  t_pilha p;
  inicializaPilha(&p);
  int valor;

  do {
    switch (menu()) {
      case 1: printf("Inserir dado\n");
              printf("Qual o valor? ");
              scanf("%d", &valor);
              inserirItemPilha(&p, valor);
              break;
      case 2: printf("Retirar item pilha\n");
              if (p.topo > 0)
                printf("Valor retirado...: %d\n", retirarItemPilha(&p));
              else
                printf("Pilha vazia!!!\n");
              break;
      case 3: printf("\n");
              mostrarPilha(p);
              break;
      case 4: printf("Sair do programa\n");
              exit(0);
    }

  } while (1);


  return 0;
}

void inicializaPilha(t_pilha *pilha)
{
  pilha->topo = 0;
}

void inserirItemPilha(t_pilha *pilha, int item)
{
  pilha->v[pilha->topo++] = item;
}

int retirarItemPilha(t_pilha *pilha)
{
  return pilha->v[--pilha->topo];
}

void mostrarPilha(t_pilha pilha)
{
  int i;
  for (i = pilha.topo-1; i >= 0; i--) {
    printf("PILHA[%d]...: %d\n", i, pilha.v[i]);
  }
}

int menu()
{
  int opc;
  printf("Opcao? ");
  scanf("%d", &opc);
  return opc;
}
