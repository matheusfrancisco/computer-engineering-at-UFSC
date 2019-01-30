/*
Tabela hash
Implementação de tratamento de colisões com lista encadeada
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define T 100

typedef char string[100];

typedef struct dado {
  string nome;
  int telefone;
  char sexo;
  struct dado *prox;
} t_dado;

typedef struct hash {
  t_dado *itens[T];
} t_hash;

int menu();
void inicializaHash(t_hash *hash);
t_dado *criaCelula(string nome, int telefone, char sexo);
int geraIndice(string nome);
void inserirItemLista(t_dado **dado, t_dado *novo);
void mostrarDados(t_dado *dado);
t_dado *recuperarDado(t_dado *dado, string nome);
void mostrarTabelaHash(t_hash hash);
void mostrarItensLista(t_dado *lista);


int main()
{
  t_hash hash;
  inicializaHash(&hash);
  string nome;
  int telefone;
  char sexo;

  do {

    switch (menu()) {

      case 1: printf("Nome? ");
              fflush(stdin);
              gets(nome);
              printf("Sexo? ");
              fflush(stdin);
              scanf("%c", &sexo);
              printf("Telefone? ");
              scanf("%d", &telefone);
              inserirItemLista(&hash.itens[geraIndice(nome)], criaCelula(nome, telefone, sexo));
              break;

      case 2: printf("Nome? ");
              fflush(stdin);
              gets(nome);
              mostrarDados(recuperarDado(hash.itens[geraIndice(nome)], nome));
              break;

      case 3: mostrarTabelaHash(hash);
              break;

      case 4: exit(0);

    }

  } while (1);

  return 0;
}

int menu()
{
  int opc;

  printf("1.Inserir dado na hash\n");
  printf("2.Recuperar dado da hash\n");
  printf("3.Mostrar tabela hash\n");
  printf("4.Sair do programa\n");
  printf("?: ");
  scanf("%d", &opc);

  return opc;
}

void inicializaHash(t_hash *hash)
{
  int i;
  for (i = 0; i < T; i++)
    hash->itens[i] = NULL;
}

t_dado *criaCelula(string nome, int telefone, char sexo)
{
  t_dado *novo;

  novo = (t_dado*)malloc(sizeof(t_dado));
  novo->prox = NULL;
  novo->sexo = sexo;
  strcpy(novo->nome, nome);
  novo->telefone = telefone;

  return novo;
}

int geraIndice(string nome)
{
  return strlen(nome) % T;
}

void inserirItemLista(t_dado **dado, t_dado *novo)
{
  t_dado *aux = *dado;
  if (!*dado) {
    *dado = novo;
  }
  else {
    while (aux->prox)
      aux = aux->prox;
    aux->prox = novo;
  }
}

void mostrarDados(t_dado *dado)
{
  if (dado) {
    printf("Nome.........: %s\n", dado->nome);
    printf("Telefone.....: %d\n", dado->telefone);
    printf("Sexo.........: %c\n", dado->sexo);
  }
  else {
    printf("Nao achou!!\n");
  }
}

t_dado *recuperarDado(t_dado *dado, string nome)
{
  t_dado *aux = dado;

  if (aux) {
    while (aux) {
      if (!strcmp(aux->nome, nome))
        return aux;
      aux = aux->prox;
    }
  }

  return aux;
}

void mostrarTabelaHash(t_hash hash)
{
  int i;
  for (i = 0; i < T; i++) {
    mostrarItensLista(hash.itens[i]);
  }
}

void mostrarItensLista(t_dado *lista)
{
  while (lista) {
    printf("Nome.............: %s\n", lista->nome);
    printf("Telefone.........: %d\n", lista->telefone);
    printf("Sexo.............: %c\n", lista->sexo);
    lista = lista->prox;
  }
}
