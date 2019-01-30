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
    int i, j, d, e, m, chave;
    for(i = 0; i < n; i++){
        chave = A[i];
        d = 1;
        e = i;
        while(d < e){
            m = (d + e) / 2;
            if(A[m] <= chave)
                d = m + 1;
            else
                e = m;
        }
        for(j = i; j > e; j--)
            A[j] = A[j - 1];
        A[e] = chave;
    }
}
