/* programa que le um numero digitado pelo usuario e mostra a soma
dos multilos de 5 deste numero*/
#include <stdio.h>
main ()
{
    int n,soma,cont,i,num;
    soma=0;
    cont=0;
    num=0;
    printf ("\n\nDigite um numero inteiro maior q 1.\n\n");
    scanf ("%d",&n);
    if (n<1)
    {
        printf ("\n\nNumero digitado menor que o minimo solicitado.\n\n");
    }
    else if (n==1)
    {
        printf ("\n\nNumero digitado menor que o minimo solicitado.\n\n");
    }
    else if (n>1)
    {
        for (i=1;i<=n;i++)
        {
            if (i%5==0)
            {
                soma=soma+i;
                cont=cont+1;
                num=i;
                printf ("\n%d",num);
            }
        }
    }
        if ((cont==0)&&(n>1))
        {
            printf ("\n\nNumero digitado valido, porem nao houve multiplos de 5.\n\n");
        }
        else if (cont!=0)
        {
            printf ("\n\nA soma dos multiplos de 5 e %d.\n\n",soma);
        }

}
