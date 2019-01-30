/*
Algoritmo Insertion Sort
*/

#include <stdio.h>
#include <stdlib.h>

#define T 10

void mostraVetor(int *vetor);
void insertionSort(int *vetor);

int main()
{
  int vetor[T] = {9, 10, 8, 7, 6, 5, 4, 3, 1, 2};

  printf("Vetor antes da ordenacao: \n");
  mostraVetor(vetor);
  printf("Vetor apos da ordenacao: \n");
  insertionSort(vetor);

  return 0;
}

void mostraVetor(int *vetor)
{
  int i, j;

  printf("\n\n");
  for (i = 0; i < T; i++) {
    printf("%d\t", vetor[i]);
  }
  printf("\n\n");
}

void insertionSort(int *v)
{
  int i, j, comparacoes = 0, escolhido;

  for (i = 1; i < T; i++) {
    escolhido = v[i];
    j = i - 1;
    while (j >= 0 && v[j] > escolhido) {
      v[j+1] = v[j];
      j--;
      comparacoes++;
    }
    v[j+1] = escolhido;
  }

  mostraVetor(v);
  printf("Quantidade de comparacoes...: %d\n\n", comparacoes);

}
