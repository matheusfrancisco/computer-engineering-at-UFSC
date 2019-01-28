#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int count = 5;

int main(){

    char ans = 'y';
    while (ans == 'Y' || ans == 'y') {
        contador();

        printf("\n\nContinuar executando? Y = Sim | N = Nao\n");
        scanf(" %c", &ans);
        system("cls");
    }

    return 0;
}

void contador(){

    printf("\nContador: %d", count);
    count--;

    if(count < 0){
        count = 5;
    }
}
