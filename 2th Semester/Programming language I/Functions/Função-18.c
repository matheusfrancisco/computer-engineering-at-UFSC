#include <stdio.h>
#include <time.h>

int random();
void dicas(int number, int password, int attempt);

int main()
{
    int continuar=1,
        password,
        attempt,
        number;

    do
    {
        system("cls || clear");
        printf("Sorteando numero entre 1 e 1000...\n");
        password = random();

        printf("Tente adivinhar o numero!\n\n");
        attempt = 0;

        do
        {
            attempt++;
            printf("Tentativa %d: ", attempt);
            scanf("%d", &number);
            dicas(number,password,attempt);
        }
        while( number != password);

        printf("Digite 0 para sair, ou qualquer outro numero para continuar: ");
        scanf("%d", &continuar);
    }
    while(continuar);

}

int random()
{
    srand( (unsigned)time(NULL) );

    return (1 + rand()%1000);
}

void dicas(int number, int password, int attempt)
{
    if(number > password)
                printf("DICA: O numero CORRETO e menor que %d\n\n", number);
    else
        if(number < password)
            printf("DICA: O numero CORRETO e maior que %d\n\n", number);
        else
            printf("Voce acertou o numero em %d tentativas!\n\n", attempt);
}
