/*
Algoritmo Merge Sort (ordenação por intercalação)
*/

#include <stdio.h>
#include <stdlib.h>

#define T 10

void mostraVetor(int *vetor);
void intercala(int *vetor, int inicio, int meio, int fim);
void mergeSort(int *vetor, int inicio, int fim);

int ativacoes = 0;
int trocas = 0;

int main()
{
  int vetor[T] = {95, 695, 195, 295, 395, 795, 100, 4, 6, 10};

  printf("Vetor antes da ordenacao: \n");
  mostraVetor(vetor);
  printf("Vetor apos da ordenacao: \n");
  mergeSort(vetor, 0, T);
  mostraVetor(vetor);

  printf("Trocas...: %d\n", trocas);

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

void intercala(int *v, int inicio, int meio, int fim)
{
  int i, j, k, *w, comparacoes = 0;

  w = (int*)malloc(sizeof(int) * (fim - inicio));

  ativacoes++;

  i = inicio;
  j = meio;
  k = 0;

  printf("Ativacao..........: %d\n", ativacoes);
  printf("Inicio............: %d\n", inicio);
  printf("Meio..............: %d\n", meio);
  printf("Fim...............: %d\n\n", fim);
  system("pause");


  while (i < meio && j < fim) {
    comparacoes++;

    printf("Primeiro while\n");
    printf("V[i]........: %d\n", v[i]);
    printf("V[j]........: %d\n\n", v[j]);
    system("pause");

    if (v[i] < v[j]) {
      w[k++] = v[i++];
      trocas++;
    }
    else {
      w[k++] = v[j++];
      trocas++;
    }
  }

  while (i < meio) {
    printf("Segundo while\n");
    printf("V[i]........: %d\n\n", v[i]);
    system("pause");

    w[k++] = v[i++];

  }

  while (j < fim) {
    printf("Terceiro while\n");
    printf("V[j]........: %d\n\n", v[j]);
    system("pause");

    w[k++] = v[j++];
  }

  // Copia vetor ordenado
  for (i = inicio; i < fim; i++) {
    v[i] = w[i-inicio];
  }

  free(w);

  //printf("Quantidade de comparacoes...: %d\n\n", comparacoes);

}

void mergeSort(int *vetor, int inicio, int fim)
{
  int meio;
  if (inicio < fim - 1) {
    meio = (inicio + fim) / 2;
    mergeSort(vetor, inicio, meio);
    mergeSort(vetor, meio, fim);
    intercala(vetor, inicio, meio, fim);
  }
}

