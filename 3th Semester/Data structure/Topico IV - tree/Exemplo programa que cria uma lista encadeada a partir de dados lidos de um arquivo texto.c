#include <stdio.h>

typedef struct no {
  int valor;
  struct no *prox;
} t_no;

t_no *criaNoh(int valor);
void inserirLista(t_no **lista, t_no *novo);
void lerArquivo(t_no **lista);
void mostrarLista(t_no *lista);

int main()
{
  t_no *lista = NULL;

  lerArquivo(&lista);
  mostrarLista(lista);

  return 0;
}

t_no *criaNoh(int valor)
{
  t_no *novo = (t_no*)malloc(sizeof(t_no));
  novo->valor = valor;
  novo->prox = NULL;
  return novo;
}

void inserirLista(t_no **lista, t_no *novo)
{
  t_no *aux = *lista;

  if (!aux) {
    *lista = novo;
  }
  else {
    while (aux->prox)
      aux = aux->prox;
    aux->prox = novo;
  }
}

void lerArquivo(t_no **lista)
{
  FILE *fp;
  int valor;

  if (!(fp = fopen("numeros.txt", "r"))) {
    printf("Arquivo numeros nao pode ser aberto!\n");
    exit(0);
  }

  while (!feof(fp)) {
    fscanf(fp, "%d ", &valor);
    inserirLista(lista, criaNoh(valor));
  }

  fclose(fp);
}

void mostrarLista(t_no *lista)
{
  while (lista) {
    printf("%d\n", lista->valor);
    lista = lista->prox;
  }
}

