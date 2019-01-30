/*
Algoritmos de Ordenação de dados
*/

#include <stdio.h>
#include <stdlib.h>

#define T 10

void carregaVetor(int *vetor);
void mostrarDados(int *vetor);
void troca(int *a, int *b);
int bubbleSort(int *v);
int acharMaior(int *v, int t);
int selectionSort(int *v);

int comparacoes = 0;

int main()
{
  int vetor[T] = {10, 9, 8, 7, 6, 5, 4, 3, 2, 1};
  srand(time(NULL));

  //carregaVetor(vetor);
  mostrarDados(vetor);
  //printf("\nTrocas........: %d\n", bubbleSort(vetor));
  selectionSort(vetor);
  printf("Comparacoes...: %d\n\n", comparacoes);
  mostrarDados(vetor);

  return 0;
}

void carregaVetor(int *vetor)
{
  int i;
  for (i = 0; i < T; i++)
    *(vetor+i) = rand() % 100;
}

void mostrarDados(int *vetor)
{
  int i;
  for (i = 0; i < T; i++)
    printf("%d\t", *(vetor+i));
}

void troca(int *a, int *b)
{
  int aux = *a;
  *a = *b;
  *b = aux;
}

int bubbleSort(int *v)
{
  int trocas = 0, i, j;

  for (j = 0; j < T; j++) {
    for (i = 0; i < T-j-1; i++) {
      if (v[i] > v[i+1]) {
        troca(&v[i], &v[i+1]);
        trocas++;
      }
      comparacoes++;
    }
  }

  return trocas;
}

int acharMaior(int *v, int t)
{
  int i, maior = v[0], pos = 0;
  for (i = 1; i < t; i++)
    if (v[i] > maior) {
      maior = v[i];
      pos = i;
    }

  return pos;
}

int selectionSort(int *v)
{
  int trocas = 0;

  int i;
  for (i = T-1; i >= 0; i--)
    troca(&v[i], &v[acharMaior(v, i+1)]);

  return trocas;
}
