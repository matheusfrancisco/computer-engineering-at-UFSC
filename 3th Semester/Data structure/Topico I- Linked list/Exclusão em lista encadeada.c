#include <stdio.h>
#include <stdlib.h>

struct ponto {
  int x, y;
  struct ponto *prox;
};

typedef struct ponto t_ponto;

t_ponto *criaLista();
t_ponto *criaCelula(int x, int y);
void inserirLista(t_ponto **lista, t_ponto *novo);
void imprimirItem(t_ponto *item);
void mostrarLista(t_ponto *lista);
t_ponto *localizarItem(t_ponto *lista, int x, int y);
int menu();
void lerDados(int *x, int *y);
t_ponto *excluirItem(t_ponto *lista, int x, int y);

int main()
{
  t_ponto *lista = criaLista();
  t_ponto *aux;
  int x, y;

  do {
    switch (menu()) {

      case 1: lerDados(&x, &y);
              inserirLista(&lista, criaCelula(x, y));
              break;

      case 2: lerDados(&x, &y);
              aux = localizarItem(lista, x, y);
              if (aux)
                imprimirItem(aux);
              else
                printf("Item nao localizado\n");
              break;

      case 3: mostrarLista(lista);
              break;

      case 4: lerDados(&x, &y);
              lista = excluirItem(lista, x, y);
              break;

      case 5: printf("Tchau!!!\n\n");
              exit(0);


    }
  } while (1);

  return 0;
}

t_ponto *criaLista()
{
  return NULL;
}

t_ponto *criaCelula(int x, int y)
{
  t_ponto *novo = (t_ponto*)malloc(sizeof(t_ponto));
  novo->x = x;
  novo->y = y;
  novo->prox = NULL;
  return novo;
}

void inserirLista(t_ponto **lista, t_ponto *novo)
{
  t_ponto *aux = *lista;
  // Verifica se lista vazia
  if (!*lista) {
    *lista = novo;
  }
  else {
    // for (aux; aux->prox != NULL; aux = aux->prox);
    while (aux->prox != NULL)
      aux = aux->prox;
    aux->prox = novo;
  }
}

void imprimirItem(t_ponto *item)
{
  printf("Valor de x....: %d\n", item->x);
  printf("Valor de y....: %d\n", item->y);
  printf("Endereco prox.: %p\n\n", item->prox);
}

void mostrarLista(t_ponto *lista)
{
  while (lista) {
    imprimirItem(lista);
    lista = lista->prox;
  }
}

t_ponto *localizarItem(t_ponto *lista, int x, int y)
{
  for (lista; lista != NULL; lista = lista->prox) {
    if (lista->x == x && lista->y == y)
      return lista;
  }
  return NULL;
}

int menu()
{
  int opc;
  printf("1.Inserir item\n");
  printf("2.Localizar item\n");
  printf("3.Mostrar todos os itens\n");
  printf("4.Excluir item\n");
  printf("5.Sair do programa\n");
  printf("?: ");
  scanf("%d", &opc);
  return opc;
}

void lerDados(int *x, int *y)
{
  printf("Valor de x? ");
  scanf("%d", x);
  printf("Valor de y? ");
  scanf("%d", y);
}

t_ponto *excluirItem(t_ponto *lista, int x, int y)
{
  t_ponto *aux = lista, *ant = NULL;

  if(!lista) { //se lista vazia
    return NULL;
  }

  while(aux) {
    if(aux->x == x && aux->y == y)
       break;
    ant = aux;
    aux = aux->prox;
  }

  if(!ant) {  //se primeiro
     lista = lista->prox;
     free(aux);
  }
  else { //se do meio ou ultimo
     ant->prox = aux->prox;
     free(aux);
  }
  return lista;
}
