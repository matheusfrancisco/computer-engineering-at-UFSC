#include <stdio.h>
#include <stdlib.h>

int main()
{
    char greeting[6]={'h','e','l','l','o','\0'};
    char greeting2[]= "world";
    printf("Mensagem %s %s",greeting,greeting2);

    char str[100];

    printf("\n Digite uma mensagem!");
    scanf("%s",&str);

    printf("\n Voce Digitou: %s",str);
}
