/*
Revisão
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef char string[100];

string nomes[5] = {"pirulito",
                   "abobora",
                   "alfajor",
                   "ovo de pascoa",
                   "maria mole"};


typedef struct doce {
  string nome;
  struct doce *prox;
}t_doce;

typedef struct pilha {
  t_doce *topo;
  int qtd_doces;
}t_pilha;

t_doce *criaItem(string nome);
void insereDoceLista(t_doce **lista, t_doce *novo);
void mostrarDoces(t_doce *lista);
int verificaVogal(char letra);
void setupPilha(t_pilha *pilha);
void mostrarPilha(t_pilha pilha);
void copiaListaParaPilha(t_doce *lista, t_pilha *pilha);
t_doce *achaUltimo(t_doce *lista);
void converteListaParaListaCircular(t_doce *lista);
void mostraListaCircular(t_doce *lista);
int geraNumeroAletorio();
t_doce *antesDele(t_doce *lista, string nome);

int main()
{
  t_doce *lista = NULL, *aux, *ele;
  int i;
  t_pilha pilha;
  setupPilha(&pilha);

  srand(time(NULL));

  for (i = 0; i < 5; i++)
    insereDoceLista(&lista, criaItem(nomes[i]));
  //mostrarDoces(lista);

  copiaListaParaPilha(lista, &pilha);
  //mostrarPilha(pilha);

  converteListaParaListaCircular(lista);
  mostraListaCircular(lista);

  aux = antesDele(lista, nomes[geraNumeroAletorio()]);
  if (aux) {
    ele = aux->prox;
    aux->prox = ele->prox;
    if (ele->prox == ele) lista = NULL;
    else if (ele == lista) lista = ele->prox;
    free(ele);
  }

  printf("Apos exclusao...\n");
  mostraListaCircular(lista);

  return 0;
}

t_doce *criaItem(string nome)
{
   t_doce *novo;
   novo = (t_doce*)malloc(sizeof(t_doce));
   strcpy(novo->nome, nome);
   novo->prox = NULL;
   return novo;
}

void insereDoceLista(t_doce **lista, t_doce *novo)
{
  t_doce *aux = *lista;
  if (!*lista) {
    *lista = novo;
  }
  else {
    // Insere no início
    if (verificaVogal(novo->nome[0])) {
      novo->prox = *lista;
      *lista = novo;
    }
    else {
      // Insere no final
      while (aux->prox) aux = aux->prox;
      aux->prox = novo;
    }
  }
}

void mostrarDoces(t_doce *lista)
{
  while (lista) {
    printf("Doce........: %s\n", lista->nome);
    printf("Endereco....: %p\n", lista);
    printf("\n");
    lista = lista->prox;
  }
}

int verificaVogal(char letra)
{
  if (letra == 'a' ||
      letra == 'A' ||
      letra == 'e' ||
      letra == 'E' ||
      letra == 'i' ||
      letra == 'I' ||
      letra == 'o' ||
      letra == 'O' ||
      letra == 'u' ||
      letra == 'U')

      return 1;

  return 0;
}

void setupPilha(t_pilha *pilha)
{
  pilha->topo = NULL;
  pilha->qtd_doces = 0;
}

void mostrarPilha(t_pilha pilha)
{
  while (pilha.topo) {
    printf("Nome doce ....: %s\n", pilha.topo->nome);
    printf("Endereco......: %p\n\n", pilha.topo);
    pilha.topo = pilha.topo->prox;
  }
  printf("Quantidade de doces...: %d\n", pilha.qtd_doces);
}

void copiaListaParaPilha(t_doce *lista, t_pilha *pilha)
{
  pilha->topo = lista;
}

t_doce *achaUltimo(t_doce *lista)
{
  while (lista->prox) lista = lista->prox;
  return lista;
}

void converteListaParaListaCircular(t_doce *lista)
{
  t_doce *aux = achaUltimo(lista);
  aux->prox = lista;
  //achaUltimo(lista)->prox = lista;
}

void mostraListaCircular(t_doce *lista)
{
  t_doce *aux = lista;
  do {
    printf("Doce........: %s\n", aux->nome);
    printf("Endereco....: %p\n", aux);
    printf("\n");
    aux = aux->prox;
  } while (aux != lista);
}

int geraNumeroAletorio()
{
  return (rand() % 5);
}

t_doce *antesDele(t_doce *lista, string nome)
{
  t_doce *aux = lista;

  do {
    if (!strcmp(aux->prox->nome, nome))
      return aux;
    aux = aux->prox;
  } while (aux != lista);

  return NULL;
}
