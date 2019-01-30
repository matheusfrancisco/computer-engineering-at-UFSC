/*
Tabela hash
*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define T 10

typedef char string[100];

typedef struct dado {
  string nome;
  int idade;
}t_dado;

typedef struct hash {
  t_dado itens[T];
} t_hash;

int menu();
int fhash(string nome);
t_dado insereHash();
t_dado recuperaDado(t_hash hash, string nome);
void mostrarDados(t_dado dado);

int main()
{
  t_hash hash;
  t_dado aux;
  string nome;

  while (1) {

    switch (menu()) {

      case 1: aux = insereHash();
              hash.itens[fhash(aux.nome)] = aux;
              break;
      case 2: printf("Qual o nome? ");
              fflush(stdin);
              gets(nome);
              mostrarDados(recuperaDado(hash, nome));
              break;
      case 3: exit(0);

    }

  }

  return 0;
}

int menu()
{
  int opc;
  printf("1.Inserir dado na hash\n");
  printf("2.Recuperar dado\n");
  printf("3.Sair\n");
  printf("?: ");
  scanf("%d", &opc);
  return opc;
}

int fhash(string nome)
{
  return strlen(nome) % T;
}

t_dado insereHash()
{
  t_dado aux;
  printf("Qual o nome da figura? ");
  fflush(stdin);
  gets(aux.nome);
  printf("Qual a idade? ");
  scanf("%d", &aux.idade);
  return aux;
}

t_dado recuperaDado(t_hash hash, string nome)
{
  return hash.itens[fhash(nome)];
}

void mostrarDados(t_dado dado)
{
  printf("Nome..........: %s\n", dado.nome);
  printf("Idade.........: %d\n", dado.idade);
}

