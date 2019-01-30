/*
Pilhas
*/

#include <stdio.h>
#include <stdlib.h>

#define T 100

typedef struct pilha {
  int itens[T];
  int topo;
} t_pilha;

void criaPilha(t_pilha *p);
void inserirItemPilha(t_pilha *p, int item);
int retirarItemPilha(t_pilha *p);
void mostrarDadosPilha(t_pilha p);
int pilhaVazia(t_pilha p);
int menu();

int main()
{
  t_pilha p;
  criaPilha(&p);
  int dado;

  do {
    switch (menu()) {
      case 1: printf("Dado? ");
              scanf("%d", &dado);
              inserirItemPilha(&p, dado);
              break;
      case 2: if (!pilhaVazia(p))
                printf("Dado...: %d\n", retirarItemPilha(&p));
              else
                printf("Pilha vazia...\n\n");
              break;
      case 3: mostrarDadosPilha(p);
              break;
      case 4: printf("Saindo...\n");
              exit(0);
    }

  } while (1);
  return 0;
}

void criaPilha(t_pilha *p)
{
  p->topo = -1;
}

void inserirItemPilha(t_pilha *p, int item)
{
  p->itens[++p->topo] = item;
}

int retirarItemPilha(t_pilha *p)
{
  return p->itens[p->topo--];
}

void mostrarDadosPilha(t_pilha p)
{
  int i;
  for (i = p.topo; i >= 0; i--)
    printf("Pilha[%d]....: %d\n", i, p.itens[i]);
}

int menu()
{
  int opc;
  printf("1.Inserir dado pilha\n");
  printf("2.Retirar dado pilha\n");
  printf("3.Mostrar pilha\n");
  printf("4.Sair do programa\n");
  printf("?: ");
  scanf("%d", &opc);
  return opc;
}

int pilhaVazia(t_pilha p)
{
  if (p.topo < 0)
    return 1;
  return 0;
}
