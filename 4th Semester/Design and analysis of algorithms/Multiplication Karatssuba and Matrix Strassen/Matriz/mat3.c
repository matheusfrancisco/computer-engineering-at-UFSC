#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void RandomMatrix(int *, int);

void MultiplicaNormal(int *, int *, int *, int tam);

void multMatrix2(int *A, int *B , int *C, int tam);
void ImprimeMatrix(int *, int);
void strassen(int *, int *, int *, int);
void SomaMatrix(int *, int *, int *, int);
void SubMatrix(int *, int *, int *, int);
void DesalocaMatrix(int *Matrix_X);

int main(int argc, char *argv[])
{
    int tam ;
    int *Mat_A;
    int *Mat_B;
    int *Mat_R;
    int *Mat_S;

    printf("Tamanho da matriz:");
    scanf("%i",&tam);
    clock_t timer;
    clock_t timer2;
    srand(time(NULL));
    srand(time(NULL));
    /*Aloca matrizes*/
    Mat_A = malloc(tam*tam*sizeof(int));
    Mat_B = malloc(tam*tam*sizeof(int));
    Mat_R = malloc(tam*tam*sizeof(int));
    Mat_S = malloc(tam*tam*sizeof(int));

    /*Verifica alocação*/
    if(!Mat_A && !Mat_B && !Mat_R && !Mat_S){
        printf("Erro de alocacao.\n");
        exit(1);
    }
    /*Preenche matrizes*/
    RandomMatrix(Mat_A,tam);
    RandomMatrix(Mat_B,tam);

    timer = clock();
    multMatrix2(Mat_A, Mat_B, Mat_R, tam);
    timer = clock() - timer;
    printf("O tempo da multiplicação normal %f segundos.\n", ((float)timer)/CLOCKS_PER_SEC);

    timer2 = clock();
    strassen(Mat_A, Mat_B, Mat_S, tam);
    timer2 = clock() - timer2;
    printf("O tempo  para o metodo de strassen foi de %f segundos.\n", ((float)timer2)/CLOCKS_PER_SEC);
   
//    ImprimeMatrix(Mat_A, tam);
//    printf("\n");
//    ImprimeMatrix(Mat_B, tam);
//    printf("\n");
//    ImprimeMatrix(Mat_R, tam);
//    printf("\n");

    /*DesalocaMatrix(Mat_A);
    DesalocaMatrix(Mat_B);
    DesalocaMatrix(Mat_R);*/


    //Mat_A = malloc(tam*tam*sizeof(int));
    //Mat_B = malloc(tam*tam*sizeof(int));
    //Mat_S = malloc(tam*tam*sizeof(int));

    /*
    if(!Mat_A && !Mat_B && !Mat_R){
        printf("Erro de alocacao.\n");
        exit(1);
    }*/


    /*Preenche matrizes*/
    //RandomMatrix(Mat_A,tam);
    //RandomMatrix(Mat_B,tam);

   
      //ImprimeMatrix(Mat_A, tam); 
      //printf("\n");
      //ImprimeMatrix(Mat_B, tam);
      //printf("\n");
      //ImprimeMatrix(Mat_S, tam);
      //printf("\n");

    //DesalocaMatrix(Mat_A);
    //DesalocaMatrix(Mat_B);
    DesalocaMatrix(Mat_A);
    DesalocaMatrix(Mat_B);
    DesalocaMatrix(Mat_R);
    DesalocaMatrix(Mat_S);

    return 0;
}


void RandomMatrix(int *matriz, int tam){
    int i, r;
    for(i = 0; i < tam*tam; i++){
            r = rand()%100;
            matriz[i]= r;
    }
}

void MultiplicaNormal(int *Mat_A, int *Mat_B, int *res, int tam){
    int i, j, k, temp;

    for(i = 0; i < tam; i++){
        for(j = 0; j < tam; j++){
            temp = 0;
            for(k = 0; k < tam; k++){
                temp += Mat_A[i*tam+k] * Mat_B[k*tam+j];
            }
            res[i*tam+j] = temp;
        }
    }
}

void ImprimeMatrix(int *matriz, int tam){
    int i, j;

    for (i = 0; i < tam; i++)
    {
        for (j = 0; j < tam; j++)
            printf("%d  ",matriz[i*tam+j]);
        printf("\n");
    }
    printf("\n");
}

void multMatrix2(int *A, int *B , int *C, int tam)
{
    int i, j, lin = 0, col = 0;
    int n = tam/2;

    if (tam <= 32)
    {
       MultiplicaNormal(A, B, C, tam);
       return;
    }

    if (tam == 1){
        C[0] = A[0] * B[0];
        return;
    }

    int *A11 = malloc(n*n*sizeof(int));
    int *A12 = malloc(n*n*sizeof(int));
    int *A21 = malloc(n*n*sizeof(int));
    int *A22 = malloc(n*n*sizeof(int));

    int *B11 = malloc(n*n*sizeof(int));
    int *B12 = malloc(n*n*sizeof(int));
    int *B21 = malloc(n*n*sizeof(int));
    int *B22 = malloc(n*n*sizeof(int));

    int *P1 = malloc(n*n*sizeof(int));
    int *P2 = malloc(n*n*sizeof(int));
    int *P3 = malloc(n*n*sizeof(int));
    int *P4 = malloc(n*n*sizeof(int));
    int *P5 = malloc(n*n*sizeof(int));
    int *P6 = malloc(n*n*sizeof(int));
    int *P7 = malloc(n*n*sizeof(int));
    int *P8 = malloc(n*n*sizeof(int));

    int *C11 = malloc(n*n*sizeof(int));
    int *C12 = malloc(n*n*sizeof(int));
    int *C21 = malloc(n*n*sizeof(int));
    int *C22 = malloc(n*n*sizeof(int));

    //int *S1 = malloc(n*n*sizeof(int));
    //int *S2 = malloc(n*n*sizeof(int));

    if(!A11 && !A12 && !A21 && !A22 && !B11 && !B12 && !B21 && !B22 && !P1 && !P2 &&
            !P3 && !P4 && !P5 && !P6 && !P7 && !P8 && !C11 && !C12 && !C21 && !C22 ){
        printf("Erro de alocacao.\n");
        exit(1);
    }


    for (lin = 0, i = 0; lin < n; lin++, i++)
    {
        for (col = 0, j = 0; col < n; col++, j++)
        {
            A11[i*n+j] = A[lin*tam+col];
            B11[i*n+j] = B[lin*tam+col];
        }
        for (col = n, j = 0; col < tam; col++, j++)
        {
            A12[i*n+j] = A[lin*tam+col];
            B12[i*n+j] = B[lin*tam+col];
        }
    }

    for (lin = n, i = 0; lin < tam; lin++, i++)
    {
        for (col = 0, j = 0; col < n; col++, j++)
        {
            A21[i*n+j] = A[lin*tam+col];
            B21[i*n+j] = B[lin*tam+col];
        }
        for (col = n, j = 0; col < tam; col++, j++)
        {
            A22[i*n+j] = A[lin*tam+col];
            B22[i*n+j] = B[lin*tam+col];
        }
    }


    //P1
    multMatrix2(A11, B11, P1, n);
    //P2
    multMatrix2(B11, B21, P2, n);

    //P3
    multMatrix2(A11, B12, P3, n);

    //P4
    multMatrix2(B11, B22, P4, n);

    //P5
    multMatrix2(A21, B11, P5, n);

    //P6
    multMatrix2(A22, B21, P6, n);

    //P7
    multMatrix2(A21, B12, P7, n);

    //P8
    multMatrix2(A22, B22, P8, n);

    //P1+P2
    SomaMatrix(P1, P2, C11, n);

    //P3+P4
    SomaMatrix(P3, P4, C12, n);

    //P3+P2
    SomaMatrix(P5, P6, C21, n);

    //P7 + P8
    SomaMatrix(P7, P8, C22, n);

   

    for (lin = 0, i = 0; lin < n; lin++, i++)
    {
        for (col = 0, j = 0; col < n; col++, j++)
            C[lin*tam+col] = C11[i*n+j];
        for (col = n, j = 0; col < tam; col++, j++)
            C[lin*tam+col] = C12[i*n+j];
    }
    for (lin = n, i = 0; lin < tam; lin++, i++)
    {
        for (col = 0, j = 0; col < n; col++, j++)
            C[lin*tam+col] = C21[i*n+j];
        for (col = n, j = 0; col < tam; col++, j++)
            C[lin*tam+col] = C22[i*n+j];
    }


    DesalocaMatrix(A11);
    DesalocaMatrix(A12);
    DesalocaMatrix(A21);
    DesalocaMatrix(A22);
    DesalocaMatrix(B11);
    DesalocaMatrix(B12);
    DesalocaMatrix(B21);
    DesalocaMatrix(B22);
    DesalocaMatrix(P1);
    DesalocaMatrix(P2);
    DesalocaMatrix(P3);
    DesalocaMatrix(P4);
    DesalocaMatrix(P5);
    DesalocaMatrix(P6);
    DesalocaMatrix(P7);
    DesalocaMatrix(P8);
    DesalocaMatrix(C11);
    DesalocaMatrix(C12);
    DesalocaMatrix(C21);
    DesalocaMatrix(C22);



}

void strassen(int *A, int *B, int *C, int tam)
{
    int i, j, lin = 0, col = 0;
    int n = tam/2;

    if (tam <= 32)
    {
       MultiplicaNormal(A, B, C, tam);
       return;
    }

    if (tam == 1){
        C[0] = A[0] * B[0];
        return;
    }

    int *A11 = malloc(n*n*sizeof(int));
    int *A12 = malloc(n*n*sizeof(int));
    int *A21 = malloc(n*n*sizeof(int));
    int *A22 = malloc(n*n*sizeof(int));

    int *B11 = malloc(n*n*sizeof(int));
    int *B12 = malloc(n*n*sizeof(int));
    int *B21 = malloc(n*n*sizeof(int));
    int *B22 = malloc(n*n*sizeof(int));

    int *P1 = malloc(n*n*sizeof(int));
    int *P2 = malloc(n*n*sizeof(int));
    int *P3 = malloc(n*n*sizeof(int));
    int *P4 = malloc(n*n*sizeof(int));
    int *P5 = malloc(n*n*sizeof(int));
    int *P6 = malloc(n*n*sizeof(int));
    int *P7 = malloc(n*n*sizeof(int));

    int *C11 = malloc(n*n*sizeof(int));
    int *C12 = malloc(n*n*sizeof(int));
    int *C21 = malloc(n*n*sizeof(int));
    int *C22 = malloc(n*n*sizeof(int));

    int *S1 = malloc(n*n*sizeof(int));
    int *S2 = malloc(n*n*sizeof(int));

    if(!A11 && !A12 && !A21 && !A22 && !B11 && !B12 && !B21 && !B22 && !P1 && !P2 &&
            !P3 && !P4 && !P5 && !P6 && !P7 && !C11 && !C12 && !C21 && !C22 && S1 && S2){
        printf("Erro de alocacao.\n");
        exit(1);
    }


    for (lin = 0, i = 0; lin < n; lin++, i++)
    {
        for (col = 0, j = 0; col < n; col++, j++)
        {
            A11[i*n+j] = A[lin*tam+col];
            B11[i*n+j] = B[lin*tam+col];
        }
        for (col = n, j = 0; col < tam; col++, j++)
        {
            A12[i*n+j] = A[lin*tam+col];
            B12[i*n+j] = B[lin*tam+col];
        }
    }

    for (lin = n, i = 0; lin < tam; lin++, i++)
    {
        for (col = 0, j = 0; col < n; col++, j++)
        {
            A21[i*n+j] = A[lin*tam+col];
            B21[i*n+j] = B[lin*tam+col];
        }
        for (col = n, j = 0; col < tam; col++, j++)
        {
            A22[i*n+j] = A[lin*tam+col];
            B22[i*n+j] = B[lin*tam+col];
        }
    }
   
    
    //P1
    SomaMatrix(A11, A22, S1, n);
    SomaMatrix(B11, B22, S2, n);
    strassen(S1, S2, P1, n);
    //

    //P2
    SomaMatrix(A21, A22, S1, n);
    strassen(S1, B11, P2, n);

    //P3
    SubMatrix(B12, B22, S2, n);
    strassen(A11, S2, P3, n);

    //P4
    SubMatrix(B21, B11, S2, n);
    strassen(A22, S2, P4, n);

    //P5
    SomaMatrix(A11, A12, S1, n);
    strassen(S1, B22, P5, n);

    //P6
    SubMatrix(A21, A11, S1, n);
    SomaMatrix(B11, B12, S2, n);
    strassen(S1, S2, P6, n);

    //P7
    SubMatrix(A12, A22, S1, n);
    SomaMatrix(B21, B22, S2, n);
    strassen(S2, S1, P7, n);

    //C11
    SomaMatrix(P1, P4, C11, n);
    SubMatrix(C11, P5, C11, n);
    SomaMatrix(C11, P7, C11, n);

    //C12
    SomaMatrix(P3, P5, C12, n);

    //C21
    SomaMatrix(P2, P4, C21, n);

    //C22
    SubMatrix(P1, P2, C22, n);
    SomaMatrix(C22, P3, C22, n);
    SomaMatrix(C22, P6, C22, n);

    for (lin = 0, i = 0; lin < n; lin++, i++)
    {
        for (col = 0, j = 0; col < n; col++, j++)
            C[lin*tam+col] = C11[i*n+j];
        for (col = n, j = 0; col < tam; col++, j++)
            C[lin*tam+col] = C12[i*n+j];
    }
    for (lin = n, i = 0; lin < tam; lin++, i++)
    {
        for (col = 0, j = 0; col < n; col++, j++)
            C[lin*tam+col] = C21[i*n+j];
        for (col = n, j = 0; col < tam; col++, j++)
            C[lin*tam+col] = C22[i*n+j];
    }

    DesalocaMatrix(S1);
    DesalocaMatrix(S2);
    DesalocaMatrix(A11);
    DesalocaMatrix(A12);
    DesalocaMatrix(A21);
    DesalocaMatrix(A22);
    DesalocaMatrix(B11);
    DesalocaMatrix(B12);
    DesalocaMatrix(B21);
    DesalocaMatrix(B22);
    DesalocaMatrix(P1);
    DesalocaMatrix(P2);
    DesalocaMatrix(P3);
    DesalocaMatrix(P4);
    DesalocaMatrix(P5);
    DesalocaMatrix(P6);
    DesalocaMatrix(P7);
    DesalocaMatrix(C11);
    DesalocaMatrix(C12);
    DesalocaMatrix(C21);
    DesalocaMatrix(C22);

}

void DesalocaMatrix(int *Matrix_X)
{
    free(Matrix_X);
}
void SomaMatrix(int *Mat_A, int *Mat_B, int *Mat_R, int tam){
    int i, j;

    for (i = 0; i < tam; i++){
        for (j = 0; j < tam; j++){
            Mat_R[i*tam+j] = Mat_A[i*tam+j] + Mat_B[i*tam+j];
        }
    }
}


void SubMatrix(int *Mat_A, int *Mat_B, int *Mat_R, int tam){
    int i, j;

    for (i = 0; i < tam; i++){
        for (j = 0; j < tam; j++){
            Mat_R[i*tam+j] = Mat_A[i*tam+j] - Mat_B[i*tam+j];
        }
    }
}