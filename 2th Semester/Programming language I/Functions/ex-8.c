#include <stdio.h>>
#include <stdlib.h>
#include <string.h>


int inverte (unsigned int,unsigned int); // protótipo da função
//Para declarar que um número seja apenas positivo (incluindo o 0), usa o modificador unsigned:
unsigned int teste;

int main()
{   unsigned int N_inv , num, peso=1,num_digitos,i;
    char num_string[10];
    printf("Digite um um numero inteiro: ");
    gets(num_string);
    num_digitos=strlen(num_string); // descobre o numero de digitos
    num=atoi(num_string);
    for(i=1;i<num_digitos;i++)peso=peso*10; // determina o peso maximo
    N_inv=inverte(num,peso);
    printf("\nSeu n\xA3mero invertido \x82:   %d\n\n",N_inv);
    system ("Pause");
    return 0;
   ;
}

int inverte (unsigned int num, unsigned int peso)
{   unsigned int num_inv=0,resto;
    while(num>0)
    {
        resto=num%10;   // obtem o resto
        num=num/10;     // atualiza numero
        num_inv = num_inv + peso*resto; // compoe o numero

    peso=peso/10;    // atualiza o peso
    }
    return num_inv;
}
