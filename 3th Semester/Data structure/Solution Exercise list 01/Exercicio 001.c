#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define MAX_NOME 50

typedef struct pessoa
{
     char nome[MAX_NOME];
     int idade;
     char sobnome[MAX_NOME];
}Pessoa;

/*celula lista*/
typedef struct Lista
{
    Pessoa *elemento;
    struct Lista *prox;
}celula;

typedef celula *Lista;

void inserir(celula *ptr, Pessoa *p)
{
    if( ptr == NULL)
    {
        printf("Lista vazia ");
        celula *novo;
        novo = malloc(sizeof(celula));
        novo->elemento= p;
        novo->prox = ptr->prox;
        ptr->prox = novo;
        printf("%s   %d \n", p->nome, p->idade);
    }
    else{
        celula *novo;
        novo = malloc(sizeof(celula));
        novo->elemento= p;
        novo->prox = ptr->prox;
        ptr->prox = novo;
         printf("%s   %d \n", p->nome, p->idade);
celula *Buscar(Lista topo, Pessoa p){
    celula *n = topo->prox;
    while ((n != NULL) && (n->elemento->sobnome != p.sobnome)){
            printf("Sobrenome e %s \n", n->elemento->sobnome);
        n = n->prox;

    }
    return n;
}
void printar(celula *topo)
{
    celula *aux = topo;
    /*printf("Nome: %s | Idade: %d \n",topo->elemento->nome,*/
topo->elemento->idade;
    /*2printf("tamo aki\n");*/
    if(aux == NULL)
    {
         printf("vazio");
    }
    else
    {
          do
          {
                 printf("Nome: %s | Idade: %d \n",aux->elemento->nome,
aux->elemento->idade);
                 printf("-------------------------- \n");
                 aux= aux->prox;

          }while(aux != NULL);
    }
}

celula *buscarSubString(Lista topo, char sobrenome[MAX_NOME] ){
    celula *n = topo->prox;
    /*criei um monte de variavel num sei se vou usar todas*/
    int flag1= 0;
    int flat2=0;
    int tam1 =0;
    int tam2 =0;
    int i,j;
    char sobnomeStruct[MAX_NOME];
    /*while q percorre sua lista*/
    while ((n != NULL) ){
        printf("passou no while \n");
        /*obtem o tamanho do sobrenome q vc vai comparar*/
        tam1 = strlen(n->elemento->sobnome);
            if ( tam1 != 0)/*ve se num é um nome vazio*/
            {
                printf("passou no if \n");
                strcpy(sobnomeStruct, n->elemento->sobnome);/*copia o
seu elemento->sobnome para um vetor char simples*/
                //percorre levando em consideração o tamanho do seu sobnome
                 for(i =0; i< tam1; i++){
                     printf("passou no for \n");
                     /*esse if q compara a letra q vc da
elemento->sobnome[i] com a sobrenome[j] que vc ta procurando*/
                    if(sobnomeStruct[i] ==sobrenome[j]){
                        printf("passou no if2 \n");
                        j++;
                        /*se acertar ele incrementa o j q é o indice
do sobrenome para agora comparar a proxima letra*/
                        /*quando o j for do tamanho da string q vc ta
procurando então vc percorreu ela inteira*/
                        if(j == strlen(n->elemento->sobnome)){
                            printf("passou no if3 \n");
                            return n;/*retorna o n q ele ta*/
                        }
                    }
                    else{
                        /*caso vc erre uma unica letra do sobrenome vc*/
/*tem q verificar denovo do 0,*/
                        /*por isso quando vc erra o j vai pra 0*/
                        j =0;
                    }

                 }
                /*printf("teste: %s \n", sobnomeStruct);*/

            }
       /*  && (n->elemento->sobnome != p.sobnome)){*/
      /*   printf("Sobrenome e %s \n", n->elemento->sobnome);*/
       n = n->prox;

    }
    return n;
}

int main(void)
{
    Lista topo = NULL;
    Pessoa p1,p2,p3,p4,p;
    Pessoa *info_removida;
    int menu = 1;
    char sobre[MAX_NOME];

    p1.idade = 30;
    strcpy(p1.nome, "matheus");
    strcpy(p1.sobnome, "francisco");
    strcpy(sobre, "francisco");

    p2.idade = 18;
    strcpy(p2.nome, "mayara");

    p3.idade = 19;
    strcpy(p3.nome, "juca");

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
        "6 - Buscar Sobnome\n"
        "-----------------\n"
               (buscarSubString(topo, sobnome));
            break;
            default:
                printf("Opcao inexistente.");
             break;
            }
       }
}
