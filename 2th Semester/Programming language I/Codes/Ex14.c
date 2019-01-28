#include<stdio.h>

int main ()
{

    int c;
    float s, s_n , a;

 printf("   Salario atual: \n");
 scanf("%f", &s);

 printf(" Escolha o cargo de funcionario: \n"
        "1 - Escrituario \n"
        "2 - Secratario \n"
        "3 - Caixa \n"
        "4 - Gerente \n"
        "5 - Diretor \n ");
  printf ("Sua escolha e : \t");
  scanf ("%i", &c );

 switch (c)
 {
 case 1:
    a = s * 0.5;
    s_n = s + a;
    printf("\n Cargo : 1 - Escrituario \n");
    printf("\n Valor de aumento: %.2f \n", a);
    printf("\n Novo Salario: %.2f \n", s_n );
    break ;

 case 2:
    a = s* 0.35;
    s_n = s + a;
    printf("\n Cargo : 2 - Secretario \n");
    printf("\n Valor de aumento %.2f \n", a);
    printf("\n Novo Salario: %.2f \n",s_n);
    break;

case 3:
    a = s* 0.2;
    s_n = s + a;
    printf("\n Cargo : 3 - Caixa \n");
    printf("\n Valor de aumento %.2f \n", a);
    printf("\n Novo Salario: %.2f \n",s_n);
    break;

case 4:
    a = s* 0.1;
    s_n = s + a;
    printf("\n Cargo : 4 - Gerente \n");
    printf("\n Valor de aumento %.2f \n", a);
    printf("\n Novo Salario: %.2f \n",s_n);
    break;

case 5:
    a = 0;
    s_n = s ;
    printf("\n Cargo : 5 - Diretor \n");
    printf("\n Valor de aumento %.2f \n", a);
    printf("\n Novo Salario: %.2f \n",s_n);
    break;


 default :
    printf(" \n Código de cargo invalido! \n");
    break;


 }

 return 0;

}
