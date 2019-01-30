/*4. – Escreva uma vers˜ao recursiva para o algoritmo Sele¸c~ao (ordena¸c˜ao por
sele¸c˜ao visto em sala de aula).*/

#include<stdlib.h>
#include<stdio.h>

int selecao(int n, int v[]);

int main(){
    int i = 0;
    int n = 10;
    int v[10] = {7, 6, 4, 3, 8, 9, 10, 1, 2, 5};

    for(i = 0; i < n; i++){
        printf(" %i ", v[i]);
    }

    selecao(n, v);

    printf("\n");

    for(i = 0; i < n; i++){
        printf(" %i ", v[i]);
    }

    return 0;
}

int selecao(int n, int v[]){
    int i, j, min, aux;
    for(i = 0; i < n - 1; i++){
        min = i;
        for(j = i + 1; j < n; j++)
            if(v[j] < v[min]) min = j;
        aux = v[i];
        v[i] = v[min];
        v[min] = aux;
    }
}
