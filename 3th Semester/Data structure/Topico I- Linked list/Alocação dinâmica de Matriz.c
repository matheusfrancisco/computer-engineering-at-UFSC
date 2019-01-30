/*
Exemplo:
Alocação dinâmica de matriz
*/

#include <stdio.h>
#include <stdlib.h>

int main()
{
  int **matriz, i, j, linha, coluna;

  // Solicita o tamanho do vetor
  printf("Qual o tamanho da matriz?\n");
  printf("Numero de linhas...: ");
  scanf("%d", &linha);
  printf("Numero de colunas..: ");
  scanf("%d", &coluna);

  if (linha <= 0 || coluna <= 0) {
    printf("Valor invalido para a alocaco dinamica\n");
    exit(0);
  }

  // Aloca as linhas da matriz
  matriz = (int**)malloc(sizeof(int*) * linha);
  if (!*matriz) { // Se o malloc retornar NULL
    printf("Erro de alocao dinamica\n");
    exit(0);
  }

  // Aloca as colunas da matriz
  for (i = 0; i < linha; i++)
    *(matriz+i) = (int*)malloc(sizeof(int) * coluna);

  // Carrega valores para a matriz
  for (i = 0; i < linha; i++)
    for (j = 0; j < coluna; j++)
      scanf("%d", (*(matriz+i))+j);

  // Mostra valores da matriz
  for (i = 0; i < linha; i++) {
    for (j = 0; j < coluna; j++)
      printf("%d\t", *(*(matriz+i))+j);

    printf("\n");
  }

  // Libera memoria ocupada pelas colunas
  for (i = 0; i < linha; i++)
    free(*(matriz+i));

  // Libera memoria ocupada pelas linhas
  free(*matriz);

  return 0;
}
