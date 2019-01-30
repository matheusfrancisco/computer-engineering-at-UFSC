/*
Lista encadeada
*/
#include <stdio.h>
#include <stdlib.h>

struct aluno {
  int matricula;
  int idade;
  struct aluno *prox;
};

struct aluno *criaCelula(int mat, int idade);
void insereLista(struct aluno** lista, struct aluno* novo);
void mostrarLista(struct aluno* lista);
int menu();

int main()
{
  struct aluno *lista = NULL;
  int matricula, idade;

  while (1) {

    switch(menu()) {

      case 1: printf("Qual a matricula? ");
              scanf("%d", &matricula);
              printf("Qual a idade? ");
              scanf("%d", &idade);
              insereLista(&lista, criaCelula(matricula, idade));
              break;

      case 2: mostrarLista(lista);
              break;

      case 3: exit(0);

    }

  }

  return 0;
}

struct aluno *criaCelula(int mat, int idade)
{
  struct aluno *novo;

  // Alocação dinâmica
  novo = (struct aluno*)malloc(sizeof(struct aluno));
  novo->matricula = mat;
  novo->idade = idade;
  novo->prox = NULL;

  return novo;
}

int menu()
{
  int opc;

  printf("1.Incluir dados na lista\n");
  printf("2.Mostar dados da lista\n");
  printf("3.Sair do programa\n");
  printf("?: ");
  scanf("%d", &opc);

  return opc;
}

void insereLista(struct aluno** lista, struct aluno* novo)
{
  novo->prox = *lista;
  *lista = novo;
}

void mostrarLista(struct aluno* lista)
{
  printf("\n");
  while (lista) {
    printf("Matricula....: %d\n", lista->matricula);
    printf("Idade........: %d\n", lista->idade);
    lista = lista->prox;
    printf("\n");
  }
}
