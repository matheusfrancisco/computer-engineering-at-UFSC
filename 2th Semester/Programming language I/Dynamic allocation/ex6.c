#include <stdio.h>
#include <string.h>
#include <stdlib.h>


//Fun��o: Criar vetores de tamanho din�mico escolhido pelo usu�rio.
//Data: 01/07/2015
//Descri��o: Aloca vetores A e B dinamicamente e forma o vetor C fazendo a jun��o de A e B
//Algoritmos: La�os de repeti��o, ponteiros e aloca��o din�mica.
//Condi��es de contorno: Caso o tamanho do vetor seja (0<=) n�o ser� alocado nenhum vetor e o programa acusar� erro.

//===============================================
void main()
{
    //um ponteiro para um inteiro
    int *Ptr1;
    int *Ptr2;
    int *Ptr3;
    int sizeA, sizeB;
    int i;
    //========================
//entrada de dados
    printf("Tamanho do vetor A:\n");
    scanf("%d",&sizeA);

    printf("Tamanho do vetor B:\n");
    scanf("%d",&sizeB);

//--------------------------------------------

    //alocando memoria para vetores
    Ptr1 = (int*) malloc(sizeA*sizeof(int));
    Ptr2 = (int*) malloc(sizeB*sizeof(int));
    Ptr3 = (int*) malloc((sizeA+sizeB)*sizeof(int));
//--------------------------------------------
//processamento
    if(Ptr1 == NULL || Ptr2 == NULL) //verifica��o para garantir se a aloca��o foi feita com sucesso
    {
        printf("ALOCATION ERROR.");
    }
    else
    {
        for(i=0; i < sizeA; i++)
        {
            Ptr1[i] = i;
        }
    }
    if(Ptr1 == NULL || Ptr2 == NULL)//verifica��o para garantir se a aloca��o foi feita com sucesso
    {
        printf("ALOCATION ERROR.");
    }
    else
    {
        for(i=0; i < sizeB; i++)
        {
            Ptr2[i] = i;
        }
    }
//--------------------------------------------
//saida de dados
    for(i=0; i < sizeA; i++)
    {
            Ptr3[i] = Ptr1[i];
    }
    for(i=0; i < sizeB; i++)
    {
            Ptr3[i+sizeA] = Ptr2[i];
    }
    for(i=0; i < sizeA+sizeB; i++)
    {
        printf("Vetor C, resultante pos [%d]:%d\n", i, Ptr3[i]);
    }
//--------------------------------------------
}


