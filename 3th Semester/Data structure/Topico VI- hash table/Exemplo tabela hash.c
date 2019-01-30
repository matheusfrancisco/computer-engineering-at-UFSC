/*
Tabela Hash
*/

#include <stdio.h>
#include <stdlib.h>

#define T 10

typedef char string[100];

typedef struct dado {
  int idade;
  string nome;
  string telefone;
} t_dado;

typedef struct hash {
  t_dado tabela[T];
} t_hash;

int menu();
void inserirDado(t_hash *hash, t_dado dado);
t_dado recuperarDado(t_hash hash, string chave);
int funcaoHash(string chave);
void mostrarHash(t_hash hash);

int main()
{
  int valor;
  string nome;
  t_hash hash;
  t_dado aux;

  while (1) {

    switch (menu()) {

      case 1: printf("Idade? ");
              scanf("%d", &aux.idade);
              printf("Nome? ");
              fflush(stdin);
              gets(aux.nome);
              printf("Telefone? ");
              fflush(stdin);
              gets(aux.telefone);
              inserirDado(&hash, aux);
              break;

      case 2: printf("Qual a chave? ");
              gets(nome);
              aux = recuperarDado(hash, nome);
              printf("Idade.....%d\n", aux.idade);
              printf("Nome......%s\n", aux.nome);
              printf("Telefone..%s\n", aux.telefone);
              break;

      case 3: mostrarHash(hash);
              break;

      case 4: printf("3 x 0 ah ah\n");
              exit(0);

    }

  }

  return 0;
}

int menu()
{
  int opc;
  printf("1.Inserir dado\n");
  printf("2.Recuperar dado\n");
  printf("3.Mostrar dados hash\n");
  printf("4.Adios\n");
  printf("?: ");
  scanf("%d", &opc);
  return opc;
}

void inserirDado(t_hash *hash, t_dado dado)
{
  hash->tabela[funcaoHash(dado.nome)] = dado;
}

t_dado recuperarDado(t_hash hash, string chave)
{
  return hash.tabela[funcaoHash(chave)];
}

int funcaoHash(string chave)
{
  return (strlen(chave)+chave[0])%T;
}

void mostrarHash(t_hash hash)
{
  int i;
  for (i = 0; i < T; i++) {
    printf("Idade[%i].....: %d\n", i, hash.tabela[i].idade);
    //printf("Nome[%i]......: %s\n", i, hash.tabela[i].nome);
    //printf("Telefone[%i]..: %s\n\n", i, hash.tabela[i].telefone);
  }
}
