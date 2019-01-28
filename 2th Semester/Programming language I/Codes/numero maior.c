#include<stdio.h>

int main(){

     float n1,n2;   // armazenar variaveis

            printf("Maior de dois numero\n");
            //Entrada de Dados.
                printf("Digite um numero:");
                    scanf("%f",&n1);
                printf("Digite um numero:");
                    scanf("%f",&n2);
            system("cls");
            //Processamento e saida de dados
            printf("\n Maior numero e ");
                    if ( n1 > n2 )
            printf ("%.2f", n1);
                    else
            printf ("%.2f", n2);

    return 0;
}



