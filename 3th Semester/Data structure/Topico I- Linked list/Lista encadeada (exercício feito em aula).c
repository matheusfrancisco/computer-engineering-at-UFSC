#include <stdio.h>

struct livro {
  int id;
  struct livro *prox;
};

struct livro *criaCelula(int id);
void inserirCelulaLista(struct livro** lista, struct livro* novo);
void mostraLista(struct livro* lista);
int menu();

int main()
{
  struct livro *lista = NULL;
  int id;

  while (1) {

    switch (menu()) {

      case 1: printf("Identificacao? ");
              scanf("%d", &id);
              inserirCelulaLista(&lista, criaCelula(id));
              break;

      case 2: mostraLista(lista);
              break;

      case 3: break;

    }

  }

  return 0;
}

struct livro *criaCelula(int id)
{
  struct livro* novo;

  novo = (struct livro*)calloc(sizeof(struct livro), 1);
  if (novo) {
    novo->id = id;
    novo->prox = NULL;
  }

  return novo;
}

void inserirCelulaLista(struct livro** lista, struct livro* novo)
{
  novo->prox = *lista;
  *lista = novo;
}

void mostraLista(struct livro* lista)
{
  for (lista; lista != NULL; lista = lista->prox) {
    printf("Identificacao..: %d\n", lista->id);
    printf("Endereco prox..: %p\n", lista->prox);
    printf("\n");
  }

}

int menu()
{
  int opc;
  printf("1.Inserir dados\n");
  printf("2.Mostrar lista\n");
  printf("3.Excluir celula\n");
  printf("?: ");
  scanf("%d", &opc);

  return opc;
}
