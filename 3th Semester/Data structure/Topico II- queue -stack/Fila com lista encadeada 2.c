/*
Fila com lista encadeada
*/

#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#define T_STR 100

typedef char string[T_STR];

typedef struct data {
  int dia, mes, ano;
} t_data;

struct aluno {
  string nome;
  t_data data;
  struct aluno *prox;
};

typedef struct fila {
  struct aluno *inicio, *fim;
} t_fila;

int menu();
struct aluno* criaCelula(string nome, t_data data);
int isVazia(t_fila fila);
void inserirFila(t_fila *fila, struct aluno *novo);
struct aluno* retirarFila(t_fila *fila);
void mostrarDadosAluno(struct aluno aluno);
void mostrarFila(t_fila fila);
int qtdFila(t_fila fila);

int main()
{
  t_fila fila;
  fila.inicio =NULL;
  fila.fim=NULL;
  string nome;
  struct aluno *aux;
  t_data data;
  int qtd=0;

  while(1){
    switch(menu()){
      case 1: printf("Digite o nome\n");
              scanf("%s", nome);
              printf("Digite o dia");
              scanf("%d", &data.dia);
              printf("Digite o mes");
              scanf("%d", &data.mes);
              printf("Digite o ano");
              scanf("%d", &data.ano);
              inserirFila(&fila,criaCelula(nome,data));
              break;
      case 2: mostrarFila(fila);
              break;
      case 3: aux = retirarFila(&fila);
              mostrarDadosAluno(*aux);
              free(aux);
              break;
      case 4: qtd = qtdFila(fila);
              printf("%i\n",qtd);
              break;
      case 5: exit (0);
    }
  }
  return 0;
}

int menu()
{
  int opc;
  printf("1.Inserir item na fila\n");
  printf("2.Mostrar itens na fila\n");
  printf("3.Excluir item da fila\n\n");
  printf("4.Conta quantidade na fila\n");
  printf("5.Sair do programa\n");
  printf("?: ");
  scanf("%d", &opc);
  return opc;
}

struct aluno* criaCelula(string nome, t_data data)
{
  struct aluno *novo;
  novo = (struct aluno*)malloc(sizeof(struct aluno));
  strcpy(novo->nome, nome);
  novo->data = data;
  novo->prox = NULL;
  return novo;
}

int isVazia(t_fila fila)
{
  if (!fila.inicio)
    return 1;
  return 0;
}

void inserirFila(t_fila *fila, struct aluno *novo)
{
 if (isVazia(*fila)) {
   fila->inicio = novo;
 }
 else {
   fila->fim->prox = novo;
 }
 fila->fim = novo;
}

struct aluno* retirarFila(t_fila *fila)
{
  struct aluno *aux;
  aux = fila->inicio;
  fila->inicio = aux->prox;
  return aux;
}

void mostrarDadosAluno(struct aluno aluno)
{
  printf("Nome.......: %s\n", aluno.nome);
  printf("Data atend.: %d/%d/%d\n", aluno.data.dia, aluno.data.mes, aluno.data.ano);
}

void mostrarFila(t_fila fila)
{
  struct aluno *i;
  for (i = fila.inicio; i != NULL; i = i->prox)
    mostrarDadosAluno(*i);
}


int qtdFila(t_fila fila)
{
  int contador = 0;
  struct aluno *i;
  for (i = fila.inicio; i != NULL; i = i->prox) contador++;
  return contador;
}
