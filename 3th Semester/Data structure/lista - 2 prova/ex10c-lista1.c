/*10. – Implemente os algoritmos de ordena¸c˜ao (Inser¸c˜ao, Sele¸c˜ao, MergeSort,
QuickSort, e HeapSort) para ordenar (em ordem crescente) um vetor de
n´umeros reais. Por exemplo, para o vetor A = [0.000000001, 0.00000000099],
o resultado deve ser A = [0.00000000099, 0.000000001].*/

#include<stdio.h>
#include<stdlib.h>

int separa(float v[], int p, int r);
void quicksort(float v[], int p, int r);

int main(){
    int i = 0;
    int n = 10; /*perguntar por que da erro*/
    float v[10] = {0.00001, 0.00009, 0.0007, 0.0008,
    0.0001, 0.003, 0.01000, 0.007, 0.005, 0.06};

    for(i = 0; i < n; i++){
        printf(" %f ", v[i]);
    }

    quicksort(v, 0, n);

    printf("\n");

    for(i = 0; i < n; i++){
        printf(" %f ", v[i]);
    }

    return 0;
}

int separa(float v[], int p, int r){
   float c = v[p];
   int i = p + 1, j = r, t;
   while ( i <= j) {
      if (v[i] <= c) ++i;
      else if (c < v[j]) --j;
      else {
         t = v[i], v[i] = v[j], v[j] = t;
         ++i; --j;
      }
   }
   v[p] = v[j], v[j] = c;
   return j;
}

void quicksort(float v[], int p, int r){
   int j;
   if (p < r) {
        j = separa( v, p, r);
        quicksort( v, p, j - 1);
        quicksort( v, j + 1, r);
   }
}

