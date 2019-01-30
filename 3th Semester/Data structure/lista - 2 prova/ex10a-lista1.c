/*10. – Implemente os algoritmos de ordena¸c˜ao (Inser¸c˜ao, Sele¸c˜ao, MergeSort,
QuickSort, e HeapSort) para ordenar (em ordem crescente) um vetor de
n´umeros reais. Por exemplo, para o vetor A = [0.000000001, 0.00000000099],
o resultado deve ser A = [0.00000000099, 0.000000001].*/

#include<stdlib.h>
#include<stdio.h>

void ordenacao_por_insercao(float A[], int n);

int main(){
    int i = 0;
    int n = 10;
    float v[10] = {0.00001, 0.00009, 0.0007, 0.0008,
    0.0001, 0.003, 0.01000, 0.007, 0.005, 0.06};

    for(i = 0; i < n; i++){
        printf(" %f ", v[i]);
    }

    ordenacao_por_insercao(v, n);

    printf("\n\n");

    for(i = 0; i < n; i++){
        printf(" %f ", v[i]);
    }

    return 0;
}

void ordenacao_por_insercao(float A[], int n){
    int j, i;
    float chave;
    for(j = 0; j < n; j++){
        chave = A[j];
        i = j - 1;
        while(i >= 0 && A[i] < chave){
            A[i + 1] = A[i]; /*encontrar o ponto onde chave é
            inserido no subvetor ordenado*/
            i = i - 1;
        }
        A[i + 1] = chave; /*chave é inserido no subvetor
        ordenado*/
    }
}
