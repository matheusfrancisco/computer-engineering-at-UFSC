#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char string[100];

typedef struct cont_tel {
  string nome;
  string telefone;
  struct cont_tel *ant, *prox;
} t_cont_tel;

// Funcoes auxiliares
t_cont_tel *criaContato(string nome, string telefone);
void insereLista(t_cont_tel **lista, t_cont_tel *novo);
void mostrarContatos(t_cont_tel *lista);
t_cont_tel *localizarContato(t_cont_tel *lista, string nome);
void excluirContato(t_cont_tel **lista, t_cont_tel *quem);
int menu();

int main()
{
  t_cont_tel *lista = NULL, *aux;
  string nome, telefone;

  do {

    switch (menu()) {

      case 1: printf("Nome.....? ");
              fflush(stdin);
              gets(nome);
              printf("Telefone.? ");
              fflush(stdin);
              gets(telefone);
              insereLista(&lista, criaContato(nome, telefone));
              break;

      case 2: printf("Nome.....? ");
              fflush(stdin);
              gets(nome);
              if (localizarContato(lista, nome)) {
                printf("\nExiste...\n");
              }
              else {
                printf("\nNao existe...\n");
              }
              break;

      case 3: mostrarContatos(lista);
              break;

      case 4: printf("Nome.....? ");
              fflush(stdin);
              gets(nome);
              aux = localizarContato(lista, nome);
              if (aux) {
                printf("\nExiste...\n");
                excluirContato(&lista, aux);
              }
              else {
                printf("\nNao existe...\n");
              }
              break;

      case 5: printf("Adios amigo!!!\n");
              exit(0);
    }


  } while (1);

  return 0;
}

t_cont_tel *criaContato(string nome, string telefone)
{
  t_cont_tel *novo;
  novo = (t_cont_tel*)malloc(sizeof(t_cont_tel));
  strcpy(novo->nome, nome);
  strcpy(novo->telefone, telefone);
  novo->ant = novo->prox = NULL;
  return novo;
}

void insereLista(t_cont_tel **lista, t_cont_tel *novo)
{
  t_cont_tel *aux = *lista;
  if (!*lista) {
    *lista = novo;
  }
  else {
    while (aux->prox) aux = aux->prox;
    aux->prox = novo;
    novo->ant = aux;
  }
}

void mostrarContatos(t_cont_tel *lista)
{
  while (lista) {
    printf("Nome.........: %s\n", lista->nome);
    printf("Telefone.....: %s\n\n", lista->telefone);
    lista = lista->prox;
  }
}

t_cont_tel *localizarContato(t_cont_tel *lista, string nome)
{
  while (lista) {
    if (!strcmp(lista->nome, nome))
      return lista;
    lista = lista->prox;
  }
  return NULL;
}

void excluirContato(t_cont_tel **lista, t_cont_tel *quem)
{
  t_cont_tel *aux = quem;

  if (!aux->ant && !aux->prox) {  // Ser único
    *lista = NULL;
  }
  else {
    if (!aux->ant) {  // Ser primeiro
      *lista = aux->prox;
      (*lista)->ant = NULL;
    }
    else {
      if (!aux->prox) {
        aux->ant->prox = NULL;
      }
      else {
        aux->prox->ant = aux->ant;
        aux->ant->prox = aux->prox;
      }
    }
  }

  free(aux);
}

int menu()
{
  int opc;
  printf("1.Inserir contato\n");
  printf("2.Localizar contato\n");
  printf("3.Mostrar contatos\n");
  printf("4.Excluir contato\n");
  printf("5.Sair do programa\n");
  scanf("%d", &opc);
  return opc;
}
