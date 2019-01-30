/*
Exemplo:
Alocação dinâmica de vetor
*/

#include <stdio.h>
#include <stdlib.h>

int main()
{
  int *vetor, i, tamanho;

  // Solicita o tamanho do vetor
  printf("Qual o tamanho do vetor? ");
  scanf("%d", &tamanho);

  if (tamanho <= 0) {
    printf("Valor invalido para a alocaco dinamica\n");
    exit(0);
  }

  // Aloca o vetor dinamicamente
  vetor = (int*)malloc(sizeof(int) * tamanho);
  if (!vetor) { // Se o malloc retornar NULL
    printf("Erro de alocao dinamica\n");
    exit(0);
  }

  // Carrega valores para vetor
  for (i = 0; i < tamanho; i++)
    scanf("%d", (vetor+i));

  // Mostra valores do vetor
  for (i = 0; i < tamanho; i++)
    printf("%d\t", *(vetor+i));

  // Libera memoria ocupada pelo vetor
  free(vetor);

  return 0;
}
