#include <stdio.h>
#include <stdlib.h>

#define T 8

void mostraVetor(int *v);
void shellsort (int *v, int n);

int main()
{
  int vetor[T] = {3, 4, 1, 12, 9, 7, 21, 11};

  mostraVetor(vetor);
  shellsort(vetor, T);
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

void shellsort (int *v, int n)
{
  int i, j, x, h = 7;

  do {
    h = h * 3 + 1;
  } while (h < n);

  do {
    h = h / 3;
    for (i = h; i < n; i++) {
      x = v[i];
      j = i;

      while (v[j - h] > x) {
        v[j] = v[j - h];
        j -= h;

        if (j < h)
          break;
      }
      v[j] = x;
    }
  } while (h != 1);
}
