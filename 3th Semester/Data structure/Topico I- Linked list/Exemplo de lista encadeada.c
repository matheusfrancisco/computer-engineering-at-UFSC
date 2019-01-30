/*
Exemplo:
Lista encadeada
*/

#include <stdio.h>
#include <stdlib.h>

struct item {
  int valor;
  struct item *proximo;
};

typedef struct item t_item;

// Prototipo das funcoes auxiliares
int menu();
t_item *criaNovoItem(int valor);
void inserirNovoItem(t_item **lista, t_item *novo);
t_item *localizarItem(t_item *lista, int valor);
void mostrarTodosItens(t_item *lista);

int main()
{
  int valor;
  t_item *lista = NULL, *aux;  // Inicialmente a lista esta vazia

  while (1) {

    switch (menu()) {

      case 1: printf("Valor do item? ");
              scanf("%d", &valor);
              inserirNovoItem(&lista, criaNovoItem(valor));
              break;

      case 2: printf("Valor do item? ");
              scanf("%d", &valor);
              aux = localizarItem(lista, valor);
              if (aux) {
                printf("Item encontrado\n");
              }
              else {
                printf("Item nao encontrado\n");
              }
              break;

      case 3: mostrarTodosItens(lista);
              break;

      case 4: exit(0);

    }

  }

  return 0;
}

// Implementacao das funcoes auxiliares
int menu()
{
  int opcao;

  printf("1.Inserir novo item\n");
  printf("2.Localizar um item\n");
  printf("3.Mostrar todos os itens\n");
  printf("4.Sair do programa\n");
  printf("?: ");
  scanf("%d", &opcao);

  return opcao;
}

t_item *criaNovoItem(int valor)
{
  t_item *novo = (t_item*)malloc(sizeof(t_item));

  novo->valor = valor;
  novo->proximo = NULL;

  return novo;
}

void inserirNovoItem(t_item **lista, t_item *novo)
{
  // Inserir novo item no incio da lista
  novo->proximo = *lista;
  *lista = novo;
}

t_item *localizarItem(t_item *lista, int valor)
{
  while (lista) {
    if (lista->valor == valor)
      return lista;  // Achou o item procurado

    lista = lista->proximo;  // Passa para o proximo item
  }

  return NULL;  // Nao achou o item procurado
}

void mostrarTodosItens(t_item *lista)
{
  printf("\n");
  while (lista) {
    printf("Valor....: %d\n", lista->valor);
    printf("Endereco.: %p\n", lista);
    printf("Proximo..: %p\n\n", lista->proximo);
    // Incrementa lista (passa para o proximo item)
    lista = lista->proximo;
  }
}
