/*10. – Implemente os algoritmos de ordena¸c˜ao (Inser¸c˜ao, Sele¸c˜ao, MergeSort,
QuickSort, e HeapSort) para ordenar (em ordem crescente) um vetor de
n´umeros reais. Por exemplo, para o vetor A = [0.000000001, 0.00000000099],
o resultado deve ser A = [0.00000000099, 0.000000001].*/

#include<stdio.h>
#include<stdlib.h>

void peneira( int p, int m, float v[]); /*peneira = heapfica*/
void heapsort(int n, float v[]);

int main(){
    int i = 0;
    int n = 10;
    float v[10] = {0.00001, 0.00009, 0.0007, 0.0008,
    0.0001, 0.003, 0.01000, 0.007, 0.005, 0.06};

    for(i = 0; i < n; i++){
        printf(" %f ", v[i]);
    }

    heapsort(n, v);

    printf("\n");

    for(i = 0; i < n; i++){
        printf(" %f ", v[i]);
    }

    return 0;
}

void peneira( int p, int m, float v[]){
   int f = 2 * p;
   float x = v[p];
   while (f <= m) {
      if (f < m && v[f] < v[f + 1])  ++f;
      if (x >= v[f]) break;
      v[p] = v[f];
      p = f, f = 2 * p;
   }
   v[p] = x;
}

void heapsort(int n, float v[]){
   int p, m, x;
   for (p = n / 2; p >= 1; --p)
      peneira( p, n, v);
   for (m = n; m >= 2; --m) {
      x = v[1], v[1] = v[m], v[m] = x;
      peneira( 1, m - 1, v);
   }
}



