 #include<stdio.h>
#include<stdlib.h>
#define MAX_NOME 50

typedef struct pessoa{
    char nome[MAX_NOME];
    int idade;

}Pessoa;

struct celula{
    Pessoa *conteudo;
    struct celula*ant;
    struct celula*seg;
};
typedef struct celula cel;
/*inseri entre a seguinte e null ou seja na ultima antes de null*/

void inserir(cel **lst, Pessoa *p){
     cel *nova;
     cel *aux;
     nova = (cel*)malloc(sizeof(cel*));
     nova->conteudo = p;
     nova->seg = NULL ;
     nova->ant = (*lst);



     if((*lst)->seg == NULL){
        (*lst)->seg=nova;

     }
     else{
        aux = (*lst)->seg;
        while(aux->seg != NULL){
            aux= aux->seg;
        }
        aux->seg=nova;
        nova->ant= aux;

     }


}
/* inseri entre lst  e a seguinte ou seja no inicio dps da cabeça*/

void inserir_inicio(cel **lst, Pessoa *p){
     cel *nova;
     nova = (cel*)malloc(sizeof(cel*));
     nova->conteudo = p;
     nova->seg = (*lst) ;
     nova->seg = (*lst)->seg;
     (*lst)->seg = nova;
     if(nova->seg !=NULL){
        nova->seg->ant=nova;
     }
}


void imprimir(cel*lst){
    cel*p;
    p = lst->seg;
    while(p != NULL){
        printf("%s  %d", p->conteudo->nome, p->conteudo->idade);
        p = p->seg;
    }
}



main(){
    cel*lst;

    lst = (cel*)malloc(sizeof(cel*));
    lst->seg = NULL;
    lst->ant = NULL;
    lst->conteudo = 0;

     Pessoa p1,p2,p3;

    p1.idade = 30;
    strcpy(p1.nome, "matheus");

    p2.idade = 18;
    strcpy(p2.nome, "mayara");

    p3.idade = 19;
    strcpy(p3.nome, "juca");

    int menu =1;
    while ( menu != 0)
    {
        printf(
        "\n-----------------------------------------------------\n"
        "Selecione opcao que deseja, veja nosso menu:\n"
        "-----------------\n"
        "0 - Sair \n"
        "1 - Inserir no Inicio\n"
        "3 - exibir \n"
        "2 - Inserir \n"
        "4 - Remover \n"
        "5 - Remover ini\n"
        "6 - Buscar \n"
        "-----------------\n"
        "0 - SAIR DO PROGRAMA.\n"
        "-----------------\n"
        );
        scanf("%d", &menu);
        switch (menu)
        {

            case 0:
                printf("Voce fechou.");
            break;
            case 1:
                 inserir(&lst,&p1);
                 inserir(&lst,&p2);
            break;
            case 2:
                 inserir_inicio(&lst, &p3);
                 inserir_inicio(&lst, &p2);

            break;
            case 3:
                imprimir(lst);

            break;
            case 4:

                    break;
            case 5:

            break;
            case 6:


            break;
            default:
                printf("Opcao inexistente.");
             break;
            }
       }
}
