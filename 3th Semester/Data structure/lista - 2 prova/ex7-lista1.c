/*7. – Escreva uma nova vers˜ao do algoritmo QuickSort que n˜ao aplica recurs
˜ao a vetores com 2 elementos ou menos.*/

#include<stdio.h>
#include<stdlib.h>

int separa(int v[], int p, int n);
void quicksort(int v[], int p, int n);

int main(){
    int i, j;
    int n = 10; /*perguntar por que da erro*/
    int v[10] = {7, 6, 4, 3, 8, 9, 10, 1, 2, 5};
    int n2 = 2;
    int v2[2] = {7, 6};

    for(i = 0; i < n; i++){
        printf(" %i ", v[i]);
    }

    quicksort(v, 0, n);

    printf("\n");

    for(i = 0; i < n; i++){
        printf(" %i ", v[i]);
    }

        printf("\n\n");

    for(j = 0; j < n2; j++){
        printf(" %i ", v2[j]);
    }

    quicksort(v2, 0, n2);

    printf("\n");

    for(j = 0; j < n2; j++){
        printf(" %i ", v2[j]);
    }

    return 0;
}

/*Recebe vetor v[p..r] com p < r. Rearranja os
elementos do vetor e devolve j em p..r tal que
v[p..j-1] <= v[j] < v[j+1..r].*/

int separa( int v[], int p, int r){
   int c = v[p], i = p+1, j = r, t;
   while ( i <= j) {
      if (v[i] <= c) ++i;
      else if (c < v[j]) --j;
      else {
         t = v[i], v[i] = v[j], v[j] = t;
         ++i; --j;
      }
   }
   /*agora i == j+1*/
   v[p] = v[j], v[j] = c;
   return j;
}

void quicksort( int v[], int p, int r){
   int j;
   if (p < r) {
      if(r > 2){
        j = separa( v, p, r);
        quicksort( v, p, j - 1);
        quicksort( v, j + 1, r);
      }else separa(v, p, r);
   }
}
