/*
Pilha com vetor
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define T 100

typedef char string[T];

struct dado {
  string nome;
  struct dado *prox;
};

typedef struct pilha {
  struct dado* topo;
} t_pilha;

void inicializaPilha(t_pilha *pilha);
void inserirItemPilha(t_pilha *pilha, struct dado* item);
struct dado* criaItem(string nome);
struct dado* retirarItemPilha(t_pilha *pilha);
void mostrarPilha(t_pilha pilha);
int menu();

int main()
{
  t_pilha p;
  inicializaPilha(&p);
  string nome;
  struct dado *aux;

  do {
    switch (menu()) {
      case 1: printf("Inserir dado\n");
              printf("Qual o nome? ");
              fflush(stdin);
              gets(nome);
              inserirItemPilha(&p, criaItem(nome));
              break;
      case 2: printf("Retirar item pilha\n");
              if (p.topo) {
                aux = retirarItemPilha(&p);
                printf("Valor retirado...: %s\n", aux->nome);
                free(aux);
              }
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
  pilha->topo = NULL;
}

struct dado* criaItem(string nome)
{
  struct dado* novo;
  novo = (struct dado*)malloc(sizeof(struct dado));
  strcpy(novo->nome, nome);
  novo->prox = NULL;
  return novo;
}

void inserirItemPilha(t_pilha *pilha, struct dado* item)
{
  item->prox = pilha->topo;
  pilha->topo = item;
}

struct dado* retirarItemPilha(t_pilha *pilha)
{
  struct dado *sai = pilha->topo;
  pilha->topo = sai->prox;
  return sai;
}

void mostrarPilha(t_pilha pilha)
{
  struct dado* i;
  for (i = pilha.topo; i != NULL; i = i->prox) {
    printf("PILHA...: %s\n", i->nome);
  }
}

int menu()
{
  int opc;
  printf("Opcao? ");
  scanf("%d", &opc);
  return opc;
}
