/*
Exemplo:
Aritmética de ponteiros com vetor
*/

#include <stdio.h>

#define T 10

int main()
{
  int vetor[T], i;

  // Carrega valores para o vetor
  for (i = 0; i < T; i++)
    scanf("%d", (vetor+i));

  // Mostra valores do vetor
  for (i = 0; i < T; i++)
    printf("%d\t", *(vetor+i));

  return 0;
}
