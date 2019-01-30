/*
Converte lista encadeada para pilha
*/

#include <stdio.h>
#include <stdlib.h>

typedef struct dado {
  int x;
  struct dado *prox;
} t_dado;

typedef struct pilha {
  t_dado *topo;
  int qtd;
} t_pilha;

void setupPilha(t_pilha *p);
t_dado *criaCelula(int x);
void inserirCelulaLista(t_dado **lista, t_dado *n);
void mostrarDadosLista(t_dado *lista);
void mostrarDadosPilha(t_pilha p);
void listaToPilha(t_dado *lista, t_pilha *pilha);

int main()
{
  int i;
  t_dado *lista = NULL;
  t_pilha pilha;
  setupPilha(&pilha);

  srand(time(NULL));

  for (i = 0; i < 5; i++) {
    inserirCelulaLista(&lista, criaCelula(rand() % 100));
  }

  printf("Lista-----------\n");
  mostrarDadosLista(lista);
  listaToPilha(lista, &pilha);
  printf("Pilha-----------\n");
  mostrarDadosPilha(pilha);

  return 0;
}

void setupPilha(t_pilha *p)
{
  p->topo = NULL;
  p->qtd = 0;
}

t_dado *criaCelula(int x)
{
  t_dado *novo;
  novo = (t_dado*)malloc(sizeof(t_dado));
  novo->x = x;
  novo->prox = NULL;
  return novo;
}

void inserirCelulaLista(t_dado **lista, t_dado *n)
{
  t_dado *aux = *lista;
  if (!*lista) {
    *lista = n;  // A lista esta vazia
  }
  else {
    if (n->x % 2) {  // Numero impar
      while (aux->prox)
        aux = aux->prox;
      aux->prox = n;
    }
    else {  // Numero par
      n->prox = *lista;
      *lista = n;
    }
  }
}

void mostrarDadosLista(t_dado *lista)
{
  t_dado *i;
  for (i = lista; i != NULL; i = i->prox) {
    printf("Valor.....: %d\n", i->x);
    printf("Endereco..: %p\n\n", i);
  }
}

void mostrarDadosPilha(t_pilha p)
{
  while (p.topo) {
    printf("Valor.....: %d\n", p.topo->x);
    printf("Endereco..: %p\n\n", p.topo);
    p.topo = p.topo->prox;
  }
}

void listaToPilha(t_dado *lista, t_pilha *pilha)
{
  if (lista) {
    listaToPilha(lista->prox, pilha);
    pilha->topo = lista;
    pilha->qtd++;
  }
}

