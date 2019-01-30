#include<stdlib.h>
#include<stdio.h>

void ordenacao_por_insercao(int A[], int n);

int main(){
    int i = 0;
    int n = 10; /*perguntar por que da erro*/
    int v[10] = {7, 6, 4, 3, 8, 9, 10, 1, 2, 5};

    for(i = 0; i < n; i++){
        printf(" %i ", v[i]);
    }

    ordenacao_por_insercao(v, n);

    printf("\n");

    for(i = 0; i < n; i++){
        printf(" %i ", v[i]);
    }

    return 0;
}

void ordenacao_por_insercao(int A[], int n){
    int j, i, chave;
    for(j = 0; j < n; j++){
        chave = A[j];
        i = j - 1;
        while(i >= 0 && A[i] > chave){
            A[i + 1] = A[i]; /*encontrar o ponto onde chave é
            inserido no subvetor ordenado*/
            i = i - 1;
        }
        A[i + 1] = chave; /*chave é inserido no subvetor
        ordenado*/
    }
}
