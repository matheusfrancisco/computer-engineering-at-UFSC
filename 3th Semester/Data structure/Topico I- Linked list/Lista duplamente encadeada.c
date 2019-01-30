#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define T_STR 100
// const int T_STR = 100;

typedef char string[T_STR];

struct livro {
  string titulo;
  string autor;
  int codigo;
  struct livro *ant, *prox;
};

typedef struct livro t_livro;

// funções auxiliares
t_livro *criaCelula(string autor, string titulo, int codigo);
void inserirNaLista(t_livro **lista, t_livro *novo);
void mostrarDadosLivro(t_livro *livro);
void listarLivros(t_livro *lista);
int menu();

int main()
{
  t_livro *lista = NULL;

  string nomeAutor;
  string nomeTitulo;
  int codigo = 0;

  while (1)
  {
      switch( menu() )
      {
        case 1: codigo++;
                printf("Codigo..........: %d\n", codigo );
                printf("Nome do Autor...: ");
                fflush( stdin );
                scanf("%s", nomeAutor);
                printf("Nome do Titulo..: ");
                fflush( stdin );
                scanf( "%s", nomeTitulo);
                inserirNaLista(&lista, criaCelula(nomeAutor, nomeTitulo, codigo));
                break;

        case 2: listarLivros(lista);
                break;

        case 3: exit( 0 );
                break;
      }
  }

  return 0;
}

// Implementação das funções auxiliares
t_livro *criaCelula(string autor, string titulo, int codigo)
{
  t_livro *novo;
  novo = (t_livro*)malloc(sizeof(t_livro));
  if (novo) {
    strcpy(novo->autor, autor);
    strcpy(novo->titulo, titulo);
    novo->codigo = codigo;
    novo->ant = novo->prox = NULL;
  }
  return novo;
}

void inserirNaLista(t_livro **lista, t_livro *novo)
{
  if (*lista) {  // Aqui antes gerava falha de segmentação precisa acrescenter * antes de lista
    novo->prox = *lista;
    (*lista)->ant = novo;
  }
  *lista = novo;
}

void mostrarDadosLivro(t_livro *livro)
{
  printf("Titulo.......: %s\n", livro->titulo);
  printf("Autor........: %s\n", livro->autor);
  printf("Codigo.......: %d\n", livro->codigo);
  printf("\n");
}

void listarLivros(t_livro *lista)
{
  while (lista) {
    mostrarDadosLivro(lista);
    lista = lista->prox;
  }
}

int menu()
{
  int opc;
  printf("1.Inserir item na lista\n");
  printf("2.Mostrar itens da lista\n");
  printf("3.Sair do programa\n");
  printf("?: ");
  scanf("%d", &opc);
  return opc;
}
