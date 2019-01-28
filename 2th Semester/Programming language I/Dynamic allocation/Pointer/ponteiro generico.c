#include<stdio.h>

int main(){

        /*As operaçoes aritmeticas sao sempre realizadas
        com base em uma unidade de memoria (1byte)*/

    void *p = 0x5DC; //1500
    printf("p = %d \n",p );
    p++;
    printf("p = %d \n",p);//1501
    p = p + 15;
    printf("p = %d \n",p);//1516
    p= p -2 ;
    printf("p = %d \n",p);//1514

    system("pause");
    return 0;


}
