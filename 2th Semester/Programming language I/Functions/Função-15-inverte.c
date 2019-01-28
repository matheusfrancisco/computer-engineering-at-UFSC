#include <stdio.h>>
#include <stdlib.h>
#include <string.h>


int inverte (unsigned int,unsigned int);
//Pseja apenas positivo unsigned:
unsigned int teste;

int main()
{   unsigned int N_inv , num, peso=1,num_digitos,i;
    char num_string[10];
    printf("Digite um um numero inteiro: ");
    gets(num_string);
    num_digitos=strlen(num_string); // numero de digitos
    num=atoi(num_string);
    for(i=1;i<num_digitos;i++)peso=peso*10;
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
        resto=num%10;   // resto
        num=num/10;     // atualiza
        num_inv = num_inv + peso*resto;
    peso=peso/10;
    }
    return num_inv;
}
