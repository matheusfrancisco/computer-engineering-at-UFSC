#include<stdio.h>
#include<stdlib.h>

    int main(){

        int x =10;
        int *p;

        p = &x;
        printf("x = %d\n",x); // imprime o conteudo do x
        printf("&x = %d\n",&x);  // imprime o endereço do de x
        printf("*p = %d\n",*p); // imprime o conteudo do ponteiro

        system("pause");
        return 0;





    }
