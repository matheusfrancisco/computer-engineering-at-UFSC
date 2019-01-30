/*
Exemplo:
Aritmética de ponteiros com matriz
*/

#include <stdio.h>

#define L 4
#define C 4

int main()
{
  int matriz[L][C], i, j;

  // Carrega valores para a matriz
  for (i = 0; i < L; i++)
    for (j = 0; j < C; j++)
      scanf("%d", (*(matriz+i))+j);

  // Mostra valores da matriz
  for (i = 0; i < L; i++) {
    for (j = 0; j < C; j++)
      printf("%d\t", *(*(matriz+i))+j);

    printf("\n");  // Pula uma linha
  }

  return 0;
}
