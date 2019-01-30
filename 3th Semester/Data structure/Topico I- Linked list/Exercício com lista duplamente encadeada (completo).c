/*
Exercício com lista duplamente encadeada
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char string[10];

typedef struct partido {
  int codigo;
  string sigla;
  struct partido *ant, *prox;
} t_partido;

int menu();
t_partido *criaCelula(int codigo, string sigla);
void inserePartidoLista(t_partido **lista, t_partido *partido);
void mostrarLista(t_partido *lista);
t_partido *localizarPartido(t_partido *lista, int codigo);
void excluirPartidoLista(t_partido **lista, t_partido *partido);


int main()
{
  t_partido *lista = NULL, *aux;
  int codigo;
  string sigla;

  while (1) {

    switch (menu()) {

      case 1: printf("Qual o codigo? ");
              scanf("%d", &codigo);
              printf("Qual a sigla? ");
              fflush(stdin);
              scanf("%s", sigla);
              inserePartidoLista(&lista, criaCelula(codigo, sigla));
              break;

      case 2: printf("Qual o codigo? ");
              scanf("%d", &codigo);
              aux = localizarPartido(lista, codigo);
              if (aux) {
                printf("Partido cadastrado!\n");
              }
              else {
                printf("Partido nao localizado\n");
              }
              break;

      case 3: mostrarLista(lista);
              break;

      case 4: printf("Qual o codigo? ");
              scanf("%d", &codigo);
              aux = localizarPartido(lista, codigo);
              if (aux) {
                printf("Partido cadastrado!\n");
                excluirPartidoLista(&lista, aux);
              }
              else {
                printf("Partido nao localizado\n");
              }
              break;

      case 5: printf("Tchau!!!\n");
              exit(0);

    }

  }

  return 0;
}

int menu()
{
  int opc;
  printf("1.Incluir item na lista\n");
  printf("2.Localizar item na lista\n");
  printf("3.Mostrar todos os itens da lista\n");
  printf("4.Excluir item na lista\n");
  printf("5.Sair do programa\n");
  printf("?: ");
  scanf("%d", &opc);
  return opc;
}

t_partido *criaCelula(int codigo, string sigla)
{
  t_partido *novo;
  novo = (t_partido*)malloc(sizeof(t_partido));
  novo->codigo = codigo;
  strcpy(novo->sigla, sigla);
  novo->ant = novo->prox = NULL;
  return novo;
}

void inserePartidoLista(t_partido **lista, t_partido *partido)
{
  t_partido *aux = *lista;
  // Verifica se lista esta vazia
  if (!*lista) {
    *lista = partido;
  }
  else {
    // Insere no fim da lista
    while (aux->prox) aux = aux->prox;
    aux->prox = partido;
    partido->ant = aux;
  }

}

void mostrarLista(t_partido *lista)
{
  while (lista) {
    printf("Codigo.........: %d\n", lista->codigo);
    printf("Sigla..........: %s\n\n", lista->sigla);
    lista = lista->prox;
  }
}

t_partido *localizarPartido(t_partido *lista, int codigo)
{
  while (lista) {
    if (lista->codigo == codigo)
      return lista;
    lista = lista->prox;
  }
  return NULL;
}

void excluirPartidoLista(t_partido **lista, t_partido *partido)
{
  // Se eh unico
  if (!partido->ant && !partido->prox) {
    *lista = NULL;
  }
  else {
    // Se primeiro
    if (!partido->ant) {
      *lista = partido->prox;
      (*lista)->ant = NULL;
    }
    // Se último
    else if (!partido->prox) {
      partido->ant->prox = NULL;
    }
    else {
      partido->ant->prox = partido->prox;
      partido->prox->ant = partido->ant;
    }
  }
  free(partido);
}

