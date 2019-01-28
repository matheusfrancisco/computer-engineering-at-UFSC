/* programa que le um numero digitado pelo usuario e mostra a soma
dos multilos de 5 deste numero*/
#include <stdio.h>

main ()
{

   int n,soma,cont,i,num;

  soma=0;
  cont=0;
  num=0;
  i=1;

 printf ("\n\nDigite um numero inteiro maior q 1.\n");
 scanf ("%d",&n);
     if (n<1)    {
     printf ("\n\nNumero digitado menor que o minimo solicitado, digite novamente:.\n");
     scanf ("%d",&n);
     }
     else if (n==1)   {
   printf ("\n\nNumero digitado menor que o minimo solicitado.,digite novamente:\n");
 }
     else if (n>1)
 {
  while ((i>=0)&&(i<=n)) {
   if ((i%3==0)&&(i%2==0)){
      soma=soma+i;
      cont++;
       num=i;
       printf ("\n%d",num);
}
        i++;
     }
 }
  if ((cont==0)&&(n>1)){
    printf ("\n\nNumero digitado valido, porem nao houveos pares multiplos de 3.\n\n");
 }
        else if (cont!=0)
  {
        printf ("\n\nA soma dos pares multiplos de 3 e %d.\n\n",soma);

     }
}

