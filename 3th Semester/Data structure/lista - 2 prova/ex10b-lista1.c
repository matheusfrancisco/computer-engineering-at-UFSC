/*10. – Implemente os algoritmos de ordena¸c˜ao (Inser¸c˜ao, Sele¸c˜ao, MergeSort,
QuickSort, e HeapSort) para ordenar (em ordem crescente) um vetor de
n´umeros reais. Por exemplo, para o vetor A = [0.000000001, 0.00000000099],
o resultado deve ser A = [0.00000000099, 0.000000001].*/

#include<stdlib.h>
#include<stdio.h>

int selecao(int n, float v[]);

int main(){
    int i = 0;
    int n = 10;
    float v[10] = {0.00001, 0.00009, 0.0007, 0.0008,
    0.0001, 0.003, 0.01000, 0.007, 0.005, 0.06};

    for(i = 0; i < n; i++){
        printf(" %f ", v[i]);
    }

    selecao(n, v);

    printf("\n\n");

    for(i = 0; i < n; i++){
        printf(" %f ", v[i]);
    }

    return 0;
}

int selecao(int n, float v[]){
    int i, j, min;
    float aux;
    for(i = 0; i < n - 1; i++){
        min = i;
        for(j = i + 1; j < n; j++)
            if(v[j] > v[min]) min = j;
        aux = v[i];
        v[i] = v[min];
        v[min] = aux;
    }
}
