
#include<stdio.h>
#include<stdlib.h>

    int main(){

        int x =10;
        int *p;

        p = &x;
        printf("x = %d\n",x); // imprime o conteudo do x que é 10
        *p=12;
        printf("*p = %d\n",*p); // imprime o conteudo do ponteiro que foi mudado pra 12
        printf("x = %d\n",x);  // imprime o conteudo do de x (12)

        system("pause");
        return 0;





    }
