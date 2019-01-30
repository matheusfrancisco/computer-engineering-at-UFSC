/*
Lista duplamente encadeada
*/

#include <stdio.h>
#include <stdlib.h>

#define T_STR 100

typedef char string[T_STR];

struct filme {
  int codigo;
  string titulo;
  struct filme *prox, *ant;
};

typedef struct filme t_filme;

// Funcoes auxiliares
t_filme *criaCelula(int codigo, string titulo);
void inserirNaLista(t_filme **lista, t_filme *novo);
void mostrarDadosFilme(t_filme *filme);
void mostrarLista(t_filme *lista);
int menu();

int main()
{
   t_filme *lista = NULL;
   string titulo;
   int codigo = 0;
   while (1){
      switch(menu()){
         case 1: codigo += 10;
                 printf("Informe o codigo %d\n", codigo);
                 printf("Informe o titulo ");
                 fflush(stdin);
                 scanf("%s",titulo);
                 inserirNaLista(&lista, criaCelula(codigo,titulo));
                 break;
         case 2: mostrarLista(lista);
                 break;
         case 3: exit(0);
                 break;
      }

   }

  return 0;
}

// Implementacao das funções auxiliares
t_filme *criaCelula(int codigo, string titulo)
{
  t_filme *temp;
  temp = (t_filme*)malloc(sizeof(t_filme));
  temp->codigo = codigo;
  strcpy(temp->titulo,  titulo);
  temp->prox = temp->ant = NULL;
  return temp;
}

void inserirNaLista(t_filme **lista, t_filme *novo)
{
  if (*lista) {
    novo->prox = *lista;
    (*lista)->ant = novo;
  }
  *lista = novo;
}

void mostrarDadosFilme(t_filme *filme)
{
  printf("Codigo........: %d\n", filme->codigo);
  printf("Titulo........: %s\n\n", filme->titulo);
}

void mostrarLista(t_filme *lista)
{
  while (lista) {
    mostrarDadosFilme(lista);
    lista = lista->prox;
  }
}

int menu()
{
  int opc;

  printf("1.inserir item \n");
  printf("2.mostar lista \n");
  printf("3.Sair \n");
  printf("?: ");
  scanf("%d", &opc);

  return opc;

}
