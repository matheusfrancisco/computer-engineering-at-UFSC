/*
Controle de comandas em restaurante
*/

#include <stdio.h>
#include <stdlib.h>

#define T_STR 100

typedef char string[T_STR];

typedef struct itemComanda {
  string produto;
  int qtd;
  float vlr_unitario;
  struct itemComanda *prox;
} t_ic;

typedef struct mesa {
  int id;
  string cliente;
  float total_comanda;
  t_ic *comanda;
  struct mesa *esquerda, *direita;
} t_mesa;

// Cabecalho das funcoes auxiliares
int menu();
t_ic *criaItemComanda(string produto, int qtd, float valor);
t_mesa *criaMesa(string cliente);
void inserirMesa(t_mesa **arvore, t_mesa *mesa);
void mostraDadosMesa(t_mesa *mesa);
void listaMesas(t_mesa *arvore);
void mostrarComanda(t_ic *comanda);
t_mesa *localizarMesa(t_mesa *arvore, string cliente);
t_ic *localizarProduto(t_ic *comanda, string produto);
void inserirItemComanda(t_ic **comanda, t_ic *item);


// Função principal
int main()
{
  t_mesa *arvoreMesas = NULL;
  string cliente, produto;
  t_mesa *mesa = NULL;
  t_ic *pedido = NULL;
  int quantidade;
  float valor;

  while (1) {

    switch (menu()) {

      case 1: printf("Nome do cliente? ");
              fflush(stdin);
              gets(cliente);
              inserirMesa(&arvoreMesas, criaMesa(cliente));
              break;

      case 2: listaMesas(arvoreMesas);
              break;

      case 3: printf("Nome do cliente? ");
              fflush(stdin);
              gets(cliente);
              mesa = localizarMesa(arvoreMesas, cliente);
              if (mesa) {
                printf("Produto? ");
                fflush(stdin);
                gets(produto);
                pedido = localizarProduto(mesa->comanda, produto);
                if (pedido) {
                  pedido->qtd++;
                  mesa->total_comanda += pedido->vlr_unitario;
                }
                else {
                  printf("Quantidade do produto? ");
                  scanf("%d", &quantidade);
                  printf("Valor unitario do produto? ");
                  scanf("%f", &valor);
                  // Atualiza valor das despesas
                  mesa->total_comanda += quantidade * valor;
                  inserirItemComanda(&mesa->comanda, criaItemComanda(produto, quantidade, valor));
                }
              }
              else {
                printf("\nCliente %s nao cadastrado\n", cliente);
              }
              break;

      case 4: printf("Nome do cliente? ");
              fflush(stdin);
              gets(cliente);
              mesa = localizarMesa(arvoreMesas, cliente);
              if (mesa) {
                mostrarComanda(mesa->comanda);
              }
              else {
                printf("\nCliente %s nao cadastrado\n", cliente);
              }
              break;

      case 5:
              break;

      case 6: printf("Saindo do programa\n");
              exit(0);

    }

  }

  return 0;
}

int menu()
{
  int opc;

  printf("1.Inserir mesa\n");
  printf("2.Listar mesas cadastradas\n");
  printf("3.Inserir pedido\n");
  printf("4.Listar itens comanda\n");
  printf("5.Fechar conta\n");
  printf("6.Sair do programa\n");
  printf("::::: ");
  scanf("%d", &opc);

  return opc;
}

t_ic *criaItemComanda(string produto, int qtd, float valor)
{
  t_ic *item = (t_ic*)malloc(sizeof(t_ic));
  strcpy(item->produto, produto);
  item->qtd = qtd;
  item->vlr_unitario = valor;
  item->prox = NULL;
  return item;
}

t_mesa *criaMesa(string cliente)
{
  static int id = 0;
  t_mesa *mesa = (t_mesa*)malloc(sizeof(t_mesa));
  strcpy(mesa->cliente, cliente);
  mesa->id = ++id;
  mesa->total_comanda = 0;
  mesa->comanda = NULL;
  mesa->direita = mesa->esquerda = NULL;
  return mesa;
}

void inserirMesa(t_mesa **arvore, t_mesa *mesa)
{
  if (!*arvore)
    *arvore = mesa;
  // Insere a mesa na árvore usando como chave o nome do cliente
  else if (strcmp((*arvore)->cliente, mesa->cliente) > 0)
    inserirMesa(&(*arvore)->esquerda, mesa);
  else if (strcmp((*arvore)->cliente, mesa->cliente) < 0)
    inserirMesa(&(*arvore)->direita, mesa);
}

void mostraDadosMesa(t_mesa *mesa)
{
  printf("Identificacao da mesa...: %d\n", mesa->id);
  printf("Nome do cliente.........: %s\n", mesa->cliente);
  printf("Total comanda...........: R$ %.2f\n\n", mesa->total_comanda);
  printf("*** Itens da comanda ***\n");
  mostrarComanda(mesa->comanda);
  printf("\n");
}

void listaMesas(t_mesa *arvore)
{
  if (arvore) {
    mostraDadosMesa(arvore);
    listaMesas(arvore->esquerda);
    listaMesas(arvore->direita);
  }
}

void mostrarComanda(t_ic *comanda)
{
  if (comanda) {
    printf("Produto\t Quantidade\t Valor Unitario (R$)\n");
    while (comanda) {
      printf("%s\t", comanda->produto);
      printf("%d\t", comanda->qtd);
      printf("%.2f\n", comanda->vlr_unitario);
      comanda = comanda->prox;
    }
  }
  else {
    printf("\nComanda vazia!!!\n");
  }
}

t_mesa *localizarMesa(t_mesa *arvore, string cliente)
{
  if (!arvore) {
    return NULL;
  }
  else if (!strcmp(arvore->cliente, cliente)) {
    return arvore;
  }
  else if (strcmp(arvore->cliente, cliente) > 0) {
    return localizarMesa(arvore->esquerda, cliente);
  }
  else if (strcmp(arvore->cliente, cliente) < 0) {
    return localizarMesa(arvore->esquerda, cliente);
  }
}

t_ic *localizarProduto(t_ic *comanda, string produto)
{
  while (comanda) {
    if (!strcmp(comanda->produto, produto))
      return comanda;
    comanda = comanda->prox;
  }
  return NULL;
}

void inserirItemComanda(t_ic **comanda, t_ic *item)
{
  t_ic *aux = *comanda;
  if (!*comanda) {
    *comanda = item;
  }
  else {
    while (aux->prox) aux = aux->prox;
    aux->prox = item;
  }
}
