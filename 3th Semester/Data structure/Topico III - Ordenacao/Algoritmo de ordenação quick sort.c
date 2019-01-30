/*
Algoritmo de ordenação QuickSort
*/

#include <stdio.h>
#include <stdlib.h>

#define T 6

void mostraVetor(int *v);
void troca(int *a, int *b);
int particionar(int *v, int inicio, int fim);
void quickSort(int *v, int inicio, int fim);

// Função principal
int main()
{
  int vetor[T] = {6, 5, 4, 3, 2, 1};

  mostraVetor(vetor);
  quickSort(vetor, 0, T-1);
  mostraVetor(vetor);

  return 0;
}

// Funções auxiliares
void mostraVetor(int *v)
{
  int i;
  printf("\n\n");
  for (i = 0; i < T; i++) {
    printf("%d\t", v[i]);
  }
  printf("\n\n");
}

void troca(int *a, int *b)
{
  int aux = *a;
  *a = *b;
  *b = aux;
}

int particionar(int *v, int inicio, int fim)
{
  int pivo, i, j;

  pivo = v[(inicio+fim)/2];
  i = inicio - 1;
  j = fim + 1;

  while (i < j) {

    // Primeira metade
    do {
      j--;
    } while (v[j] > pivo);

    // Segunda metade
    do {
      i++;
    } while (v[i] < pivo);

    if (i < j)
      troca(&v[i], &v[j]);
  }
  return j;
}

void quickSort(int *v, int inicio, int fim)
{
  int q;

  if (inicio < fim) {
    q = particionar(v, inicio, fim);
    quickSort(v, inicio, q);
    quickSort(v, q+1, fim);
  }
}
