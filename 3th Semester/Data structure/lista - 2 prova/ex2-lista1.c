#include<stdlib.h>
#include<stdio.h>

void ordenacao_por_insercao(int A[], int j, int n);

int main(){
    int i = 0;
    int n = 10; /*perguntar por que da erro*/
    int v[10] = {7, 6, 4, 3, 8, 9, 10, 1, 2, 5};

    for(i = 0; i < n; i++){
        printf(" %i ", v[i]);
    }

    ordenacao_por_insercao(v, 0, n);

    printf("\n");

    for(i = 0; i < n; i++){
        printf(" %i ", v[i]);
    }

    return 0;
}

void ordenacao_por_insercao(int A[], int j, int n){
    int i, chave;
    if(j < n){ /*funcao funciona até que j seja menor que n (de 0 a 9)*/
        chave = A[j]; /*chave é a posicao atual de j*/
        i = j - 1; /*i é a posicao anterior a j*/
        if(i >= 0 && A[i] > chave){ /*se i for maior ou igual a 0
                e o valor da posicao i, ou seja, a posicao anterior,
                for maior que a chave, que é o valor da posicao seguinte
                a i, ou seja, a posicao j*/
            A[i + 1] = A[i]; /*o valor da posicao seguinte a i, ou seja,
        o valor da posicao j, passa a ser o valor da posicao i*/
            i = i - 1; /*i passa a ser a posicao anterior a si próprio*/
        }
        A[i + 1] = chave; /*a chave passa a ser a posicao seguinte a i*/
        j++; /*j incrementa*/
        ordenacao_por_insercao(A, j, n); /*chama funcao novamente, agora j
        sendo 1 ao invés de 0 e assim vai*/
    }
}
