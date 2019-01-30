/*
Algoritmos de Ordenação de dados
*/

#include <stdio.h>

#define T 10

void troca(int *a, int *b);
int bubbleSort(int *v);
void mostrarVetor(int *v);
int selectionSort(int *v);
int achaMaior(int *v, int t);

int comparacoes = 0;

int main()
{
  int vetor[T] = {7, 3, 2, 10, 23, 11, 2, 0, 4, 9};

  mostrarVetor(vetor);
  //printf("Numero trocas bubble.....: %d\n", bubbleSort(vetor));
  printf("Numero trocas selection..: %d\n", selectionSort(vetor));
  printf("Comparacoes..............: %d\n\n", comparacoes);
  mostrarVetor(vetor);

  return 0;
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

  for (i = 0; i < T; i++) {
    for (j = 0; j < T-(i+1); j++) {
      if (v[j] > v[j+1]) {
        troca(&v[j], &v[j+1]);
        trocas++;
      }
      comparacoes++;
    }
  }

  return trocas;
}

void mostrarVetor(int *v)
{
  int i;
  for (i = 0; i < T; i++)
    printf("%d\t", v[i]);
  printf("\n");
}

int selectionSort(int *v)
{
  int trocas = 0, i, maior;

  for (i = T-1; i >= 0 ; i--) {
    maior = achaMaior(v, i);
    if (v[i] != v[maior]) {
      troca(&v[i], &v[maior]);
      trocas++;
    }
  }

  return trocas;
}

int achaMaior(int *v, int t)
{
  int i, maior = v[0], pos = 0;
  for (i = 1; i <= t; i++) {
    comparacoes++;
    if (v[i] > maior) {
      maior = v[i];
      pos = i;
    }
  }
  return pos;
}

