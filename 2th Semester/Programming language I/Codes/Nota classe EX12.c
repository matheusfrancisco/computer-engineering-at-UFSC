#include<stdio.h>

int main() {
       float n1,n2,n3;
       float r;

       printf("Calcular media ponderada\n");


       printf("Nota lab");
       scanf("%f",&n1);

       printf("Nota semestral");
       scanf("%f",&n2);

       printf("Nota exame final");
       scanf("%f",&n3);

       r = n1 * 0.2 + n2 * 0.3 + n3 * 0.5;

       printf("\n nota media: %.2f ", r);
       printf("conceito , ");

       if ( r < 5 )
       {
           printf("nota E");
       }
       else if ( r < 6)
       {
           printf("nota D\n");
       }
       else if ( r < 7)
       {
           printf("nota C\n");
       }
       else if ( r < 8)
       {

           printf("noTA B\n");
       }
       else if( r <= 10)
       {
           printf("nota A");
       }

}
