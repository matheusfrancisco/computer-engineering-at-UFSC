#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <time.h>

typedef char string[100];
typedef char string2[100];
typedef int boolean;

typedef struct CARTA{
    char naipe;
    int valor;
    struct CARTA *prox;
}cartas;

typedef struct pessoa{
    string nome;
    int vitorias;
    struct pessoa *prox;
    cartas *carta;
}jogador;

void embaralha(cartas **pilha);
int verifica(cartas aux, cartas *pilha);
jogador * criaJogador(string nome);
void insereJogador(jogador **fila, jogador *novo);
void inserePilha(cartas **pilha, cartas *nova);
void retiradaPilha(cartas **pilha, jogador *fila);
void mostraPilha(cartas *pilha);
void mostraFila(jogador *Fila);
void distribuiCartas(jogador **fila, cartas *pilha);
void mostraCartas(jogador *fila);
void verificaGanhadorRodada (jogador **fila);
int verificaQuantidadeCartas(cartas *fila);
int verificaQuantidadeJogadores(jogador *pilha);
void liberaPilha(cartas **pilha);
int menu();
void jogar(jogador **fila, cartas **pilha);
void zeraVitorias(jogador **fila);

//Cria a célula e define os valores para a mesma
void embaralha(cartas **pilha)
{
    int i;
    cartas *aux;
    for(i = 0; i<52; i++)
    {
        aux = (cartas*) malloc (sizeof(cartas));
        //Encontra um valor entre 1 e 13
        aux->valor = (rand() % 13) + 1 ;
        //Encontra o valor de a,b,c ou de da tabela ASCII e converte para char
        aux->naipe = (char) 97 + (rand() % 4);
        aux->prox = NULL;
        //Verifica se a carta já não existe
        if (verifica(*aux, *pilha) == 1)
        {
            i--;
            //Se existe faz o processo novamente
            free(aux);
            continue;
        }
        //Se não existe insere na pilha
        inserePilha(pilha, aux);
    }
}

int verifica(cartas aux, cartas *pilha)
{
    int i, cont = 0;
    //Verifica todas as cartas da pilha
    for(pilha; pilha!=NULL; pilha=pilha->prox)
    {
        //Se valor igual
        if (pilha->valor == aux.valor)
        {
            //Se cont = 4, retorna 1 realizando a operação novamente
            cont ++;
            //Se valor é igual e naipe também, retorna 1, realizando novamente a ação
            if (pilha->naipe == aux.naipe) return 1;
            if (cont == 4) return 1;
        }
        if (pilha->valor == 0) return 0;
    }
    return 0;
}

jogador * criaJogador(string nome){
    //aloca dinamicamente um jogador
    jogador *j;
    j = (jogador *) malloc(sizeof(jogador));
    strcpy(j->nome,nome);
    j->vitorias = 0;
    j->prox = NULL;
    return j;
}

void insereJogador(jogador **fila, jogador *novo){
    //cria um auxiliar para varrer a fila
    jogador *aux = *fila;
    if (!*fila){
        //caso a fila esteja vazia, o novo será o primeiro da fila
        *fila = novo;
    }
    else{
        while (aux->prox){
            //avança o auxiliar para o final da fila
            aux = aux->prox;
        }
        //faz com que o antigo ultimo da fila aponte para novo
        aux->prox = novo;
    }
}

void inserePilha(cartas **pilha, cartas *nova){

    if(*pilha){
        //se ja existir alguem na pilha, o novo aponta para o que esta abaixo dele
        nova->prox = *pilha;
    }
    *pilha = nova;
}

void retiradaPilha(cartas **pilha, jogador *fila){
    // cria um auxiliar para varrer a pilha
    cartas *aux = *pilha;
    //retira o tanto de cartas equivalente ao numero de jogadores na fila
    while(fila)
    {
        *pilha = (*pilha)->prox;
        free(aux);
        fila = fila ->prox;
    }
}
//funçao utilizada apenas para testes
void mostraPilha(cartas *pilha)
{
    printf("a");
    for(pilha; pilha!=NULL; pilha=pilha->prox)
    {
          printf("%i %c -", pilha->valor, pilha->naipe);
    }
}
//funçao utilizada apenas para testes
void mostraFila(jogador *Fila)
{
    while(Fila)
    {
        printf("%s",Fila->nome);
        Fila = Fila->prox;
    }
}

void distribuiCartas(jogador **fila, cartas *pilha)
{
    jogador *aux = *fila;
    while (aux)
    {
        //o jogador recebera a carta que esta no topo da pilha
        aux->carta = pilha;
        aux = aux -> prox;
        pilha = pilha -> prox;
    }
}
//funçao utilizada apenas para testes
void mostraCartas(jogador *fila)
{
    while(fila)
    {
        printf("%i %c\n", fila->carta->valor, fila ->carta -> naipe);
        fila = fila ->prox;
    }
}

void verificaGanhadorRodada (jogador **fila)
{
    jogador *aux = *fila, *vencedor;
    //coloca o vencedor como o primeiro jogador
    vencedor = aux;
    while (aux)
    {
        //verifica quem tem a carta com maior valor
        if (vencedor->carta->valor < aux->carta->valor) vencedor = aux;
        //caso as cartas tenham o mesmo valor, verifica-se o naipe
        if (vencedor->carta->valor == aux->carta->valor)
        {
                if (vencedor->carta->naipe < aux->carta->naipe) vencedor = aux;
        }
        aux = aux -> prox;
    }
    vencedor->vitorias++;
    printf("\nNome do Vencedor=%s \nValor da Carta=%i \nNaipe=%c \nQuantidade de Vitorias=%i\n\n", vencedor->nome, vencedor->carta->valor,vencedor->carta->naipe,vencedor->vitorias);
}

int verificaQuantidadeCartas(cartas *fila)
{
    int qtd=0;
    while(fila)
    {
        qtd++;
        fila = fila ->prox;
    }
    return qtd;
}

int verificaQuantidadeJogadores(jogador *pilha)
{
    int qtd=0;
    while(pilha)
    {
        qtd++;
        pilha = pilha ->prox;
    }
    return qtd;
}

int menu(){
    int opc;
    printf ("1.Inserir jogador\n");
    printf ("2.Jogar\n");
    printf ("3.Sair\n");
    printf ("Opcao: ");
    scanf ("%d", &opc);
    return opc;
}

void liberaPilha(cartas **pilha)
{
    while((*pilha) -> prox)
    {
        cartas *aux = aux = (*pilha) -> prox;
        free(*pilha);
        *pilha = aux;
    }
    free(*pilha);
    *pilha = NULL;
}

void jogar(jogador **fila, cartas **pilha){
    int opc;
    do{
        //verifica se quantidade de cartas que sobrou é maior que o numero de jogadores
        if (!(verificaQuantidadeCartas(*pilha)>=verificaQuantidadeJogadores(*fila)))
        {
                printf("\nAcabaram as cartas, deseja embaralhar novamente? (1(Sim) 0(Nao))");
                scanf("%d", &opc);
                if (opc)
                {
                    liberaPilha(pilha);
                    embaralha(pilha);
                } else break;
        }

        distribuiCartas(fila, *pilha);
        verificaGanhadorRodada(fila);
        retiradaPilha(pilha,*fila);
        printf("Deseja continuar jogando? (1(Sim) 0(Nao))");
        scanf("%d", &opc);
    }while (opc);

}
//funçao utilizada para caso os jogadores queiram jogar novamente, zerando suas vitorias anteriores
void zeraVitorias(jogador **fila){
    jogador *aux = *fila;
    while(aux){
        (aux)->vitorias = 0;
        aux = aux->prox;
    }
}

int main (){
    cartas *pilha = NULL, *aux = NULL;
    jogador *fila = NULL, *auxfila, *vencedor;
    string nome;
    string2 ganhadores;
    embaralha(&pilha);
    while (1){
        switch (menu()){
        case 1: printf("\nDigite seu nome: ");
                scanf("%s", nome);
                printf("\n");
                insereJogador(&fila, criaJogador(nome));
                break;
        case 2: jogar(&fila, &pilha);
                vencedor = auxfila = fila;
                while (auxfila){
                    //verifica se existe apenas um ganhador, ou mais de um
                    if(vencedor->vitorias < auxfila->vitorias){
                        vencedor = auxfila;
                        strcpy(ganhadores, vencedor->nome);
                    }
                    else if(vencedor->vitorias == auxfila->vitorias){
                        //em caso de empate, concatena o nome dos ganhadores
                        snprintf(ganhadores, sizeof ganhadores, "%s%s%s", ganhadores, " ", auxfila->nome);
                    }
                    auxfila = auxfila->prox;
                }
                printf("\nO(s) ganhador(es) foi(ram) %s\n", ganhadores);
                zeraVitorias(&fila);
                break;
        case 3: exit(0);
        }
    }
    return 0;
}
