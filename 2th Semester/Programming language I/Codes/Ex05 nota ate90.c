#include<stdio.h>

int main(){
        float nt;

        printf("Informe a Nota:\n");
        scanf("%f", &nt);


        if (nt >= 90)
        {
          printf("A");
        }
        else if (nt >= 80)
        {
         printf("B");

        }
        else if( nt >= 70)
        {
            printf("C");
        }
        else if( nt >= 60)
        {
            printf("D");
        }
        else
        {
            printf("R");
        }
return 0;
}
