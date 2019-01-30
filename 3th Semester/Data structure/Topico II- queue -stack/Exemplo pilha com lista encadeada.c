/*
Pilhas
*/

#include <stdio.h>
#include <stdlib.h>

struct dado {
  int x;
  struct dado *prox;
};

typedef struct pilha {
  struct dado* topo;
} t_pilha;

void criaPilha(t_pilha *p);
struct dado* criaItem(int x);
void inserirItemPilha(t_pilha *p, struct dado* item);
struct dado* retirarItemPilha(t_pilha *p);
void mostrarDadosPilha(t_pilha p);
int pilhaVazia(t_pilha p);
int menu();

int main()
{
  t_pilha p;
  criaPilha(&p);
  int dado;
  struct dado* aux;

  do {
    switch (menu()) {
      case 1: printf("Dado? ");
              scanf("%d", &dado);
              inserirItemPilha(&p, criaItem(dado));
              break;
      case 2: if (!pilhaVazia(p)) {
                aux = retirarItemPilha(&p);
                printf("Dado...: %d\n", aux->x);
                free(aux);
              }
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
  p->topo = NULL;
}

struct dado* criaItem(int x)
{
  struct dado *novo;
  novo = (struct dado*)malloc(sizeof(struct dado));
  novo->x = x;
  novo->prox = NULL;
  return novo;
}

void inserirItemPilha(t_pilha *p, struct dado* item)
{
  item->prox = p->topo;
  p->topo = item;
}

struct dado* retirarItemPilha(t_pilha *p)
{
  struct dado *aux = p->topo;
  p->topo = aux->prox;
  return aux;
}

void mostrarDadosPilha(t_pilha p)
{
  struct dado* i;
  int j = 0;
  for (i = p.topo; i != NULL; i = i->prox)
    printf("Pilha[%d]....: %d\n", j++, i->x);
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
  if (!p.topo)
    return 1;
  return 0;
}
