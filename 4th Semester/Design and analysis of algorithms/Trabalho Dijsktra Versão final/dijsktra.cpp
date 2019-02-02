/*Matheus Francisco Batista Machado  : 14202492*/

#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <time.h>
#include <string.h>
/*---------Estruturas---------*/
struct ListaAdj
{
    int dest;
    int peso;
    struct ListaAdj* seg;
};

typedef ListaAdj celula;
/*Estrutura para representar uma lista*/
struct adj
{

    struct ListaAdj *head;  /* ponteiro para o proximo nó da lista*/
};
typedef adj Adjlist;

/* Uma estrutura para representar um gráfico. Um gráfico é um conjunto de listas de adjacências.
   O tamanho do vetor será V (número de vértices no gráfico)*/
typedef struct Grafo
{
    int V;
    struct adj* vetor;
}grafo;

/*Estrutura do MinHeap*/
/*Toda celula do heap contém um número do vertice e a distância*/
typedef struct MinHeapcelula
{
	int numero;
	int distancia;
}HeapCelula;

/*Heap*/
typedef struct minheap
{
	int tam;
	int capacidade;
	int *pos;
	struct MinHeapcelula **vetor;
}MinHeap;

/*----------Funções------------*/
/* InserirNovaCelula(int dest, int peso) esta função recebe */
celula* InserirNovaCelula(int dest, int peso); 
/*Cria um grafo recebe a quantidade de vertices do grafo e retorna um vetor de listas*/
grafo * criarGrafo(int Vertices);
/*inserirArestas(recebe um grafo, u, v,peso) onde u--peso--v , a função esta inserindo um vertice não direcionado, porém 
podemos comentar uma parte do codigo e o grafo fica direcionado*/
void inserirArestas(grafo * G, int antes,int depois,int peso);
/*Função para imprimir as distancias*/
void imprimir(int dist[], int n);
/*Imprimir o Grafo em lista de adjacencia */
void printG(grafo *G);
/*Criar min heap*/
MinHeap * criarMinHeap(int c);
/* Cria uma nova celula para o min heap, lembrando que contem o numero de vertice e o valor de distancia do vertice */
HeapCelula *inserirHeap(int n, int dist );
/*Função utilizada no min heap para trocar */
void swapCelula(HeapCelula** a, HeapCelula**b);
/*Verifica se o heap é vaziou ou não */
int heapvaziou(MinHeap* minHeap);
/*Função que vai hepificar*/
/*Esta função também atualiza a posição dos nós quando eles são trocados, a posição necessaria para diminuir distancia*/
void minHeapifica(MinHeap *minHeap, int idx);
/*remove o minimo do heap*/
HeapCelula* removeMin(MinHeap* minHeap);
/*Função para diminuir o valor de distancia de cada vertice v*/
/* usar a pos [] da estrutura min heap assim podemos obter o indice atual da celula*/
void diminuirDistancia(MinHeap* minHeap, int n, int dist);
/*Verificar se é um minheap*/
int verificaminHeap(MinHeap *minHeap, int n);
/*Esta função ira calcular o caminho mais curto da fonte até todos os vertices*/
void dijkstra(grafo* G, int src);
/* Constrói um grafo aleatório com vértices 0..V-1 e número esperado de arcos igual a A. A função supõe que V >= 2 e A <= V*(V-1)*/
grafo* GrafoAleatorio(int V, int A);
/*Funcao que vai ler o arquivo e retornar um grafo*/
grafo *LerArquivo(FILE* fp);


int main()
{
	FILE *fp;
	int i,j,V,colunas,arestas;
	int a,quit;	
	clock_t timer;
	clock_t timer2;

	srand(time(NULL));
	int test, auxS,auxD;
	fp= fopen("grafo.txt","r");
	quit =0;
	//while(!quit){

	printf("------------Escolha uma opção para gerar entrar um grafo--------\n");
	printf("------------(1) Gerar um grafo aleátorio-------------------------\n");
	printf("------------(2) Leitura do grafo pelo arquivo--------------------\n");
	//printf("------------(3) Sair---------------------------------------------\n");
	scanf("%d",&a);
		switch(a)
		{
			case 1:
			int vertices,A;
			grafo * G1;
			printf("Insira o numero de vertices: \n");
			scanf("%d",&vertices);
			printf("Insira o numero de arestas(lembre que V >= 2 e A <= V*(V-1)):\n");
			scanf("%d",&A);
			G1 = GrafoAleatorio(vertices,A);
			printG(G1);
			timer = clock();
			//Fonte é 0 mas pode escolher um vertice valido 
			dijkstra(G1, 0);
			timer = clock() - timer;
			printf("O tempo da multiplicação normal %f segundos.\n", ((float)timer)/CLOCKS_PER_SEC);
			break;

			case 2:
			grafo *G2;
			int raiz;
			G2 = LerArquivo(fp);

			printf("Escolha uma fonte (raiz), para buscar a menor distancia\n");
			scanf("%d",&raiz);
			printG(G2);
			dijkstra(G2, raiz);
			break;	
			/*case 3:

			quit = 10;
			break;*/
			default:

			break;

	//	}


	}

    return 0;
}
grafo *LerArquivo(FILE* fp)
{
	int i,j,V,colunas,arestas;
	
	fscanf(fp,"%d",&V);
	fscanf(fp,"%d",&arestas);
	fscanf(fp,"%d",&colunas);

	printf("Numero de vertices: %d\n",V );
	printf("Numero de arestas: %d\n",arestas );
	printf("Numero de colunas do arquivo: %d\n",colunas );
	int matriz[arestas][colunas];

	grafo* G= criarGrafo(V);
	for(i=0;i<arestas;i++)
		for(j=0;j<colunas;j++)
	{
		{
		fscanf(fp,"%d", &matriz[i][j]); 
		/*Esta salva m[i][j] ---(custo m[i][j+2])---> m[i][j+1]*/
		//matriz[i][j]= auxS;
		//fscanf(fp,"%d",&matriz[i][j]);
		//printf("%d","%d\n",auxS ,auxD);
		}
	}
	fclose(fp);
	/*Inserindo vertices e arrestas*/
	for(i=0;i<arestas;i++)
		{
		j=0;	
		printf("Matriz[%d][%d] = %d ",i,j,matriz[i][j]);
		printf(" ");
		inserirArestas(G, matriz[i][j],matriz[i][j+1],matriz[i][j+2]);
		printf("\n");

		}
	return G;
}
grafo* GrafoAleatorio(int V, int A)
{
	double prob = 	(double)A/V/(V-1);
	grafo *G = criarGrafo(V);
	for (int v=0; v<V; v++){
		for(int w=0;w<V;w++)
		{
			if(v!=w)
				if(rand()<prob*(RAND_MAX+1.0))
					inserirArestas(G,v,w,rand()%10);
		}
	}
	return G;
}
/* Função para inserir um novo nó na lista de adjacência*/
celula* InserirNovaCelula(int dest, int peso)
{
    celula* nova =(celula*) malloc(sizeof(celula));
    nova->dest = dest;
    nova->peso = peso;
    nova->seg = NULL;
    return nova;
}


/*Função para criar um novo grafo de V vertices*/
grafo * criarGrafo(int Vertices)
{
	
	grafo * G = (grafo*)malloc(sizeof(grafo));
	G->V = Vertices;
	G->vetor = (Adjlist*)malloc(Vertices* sizeof(Adjlist));

	// Cria um vetor de lista de adjacencia vazia
	for (int j = 0 ; j< Vertices; j++)
	{
		G->vetor[j].head = NULL;

	}
	return G;

}

void inserirArestas(grafo * G, int antes,int depois,int peso)
{
	celula* nova = InserirNovaCelula(depois, peso);
	nova->seg = G->vetor[antes].head;
	G->vetor[antes].head = nova;

	/*Se comentar esta parte o grafo fica direcionado **/
	/*daqui*/
	nova = InserirNovaCelula(antes,peso);
	nova->seg = G->vetor[depois].head;
	G->vetor[depois].head = nova;
	/*aqui deixa o grafo direcionado*/
	//printf("O par de vertices foi inserido");
	
}
/*Função que criar uma nova celula no min Heap*/
HeapCelula *inserirHeap(int n, int dist )
{
	HeapCelula* nova=(HeapCelula*)malloc(sizeof(HeapCelula));
	nova->numero = n;
	nova->distancia = dist;
	//printf("Testanto : %d\n",nova->distancia );
	return nova;
}

/*Função para criar min Heap*/
MinHeap * criarMinHeap(int c)
{
	MinHeap * minheap = (MinHeap*)malloc(sizeof(MinHeap));
	minheap->pos = (int*)malloc(c*sizeof(int));
	minheap->tam = 0;
	minheap->capacidade = c;
	minheap->vetor= (HeapCelula**)malloc(c*sizeof(HeapCelula*));
	return minheap;
}
/*Função de troca para dois vertices, usados no min heap*/
void swapCelula(HeapCelula** a, HeapCelula**b)
{
	HeapCelula* t = *a;
	*a=*b;
	*b=t;
}
/*Heapifica*/
void minHeapifica(MinHeap *minHeap,int idx)
{
	int menor, direita, esquerda;
	menor = idx;
	esquerda = (2* idx + 1);
	direita = (2 * idx + 2);
	//printf("Test debug\n" );]
	//printf("Test: %d\n",minHeap->tam );
	//printf("Menor,Direita, Esquerda :%d,%d,%d\n", menor ,direita,esquerda);
	//printf("esquerda vetor distancia: %d\n",minHeap->vetor[esquerda]->distancia );
	//printf("menor: %d\n",minHeap->vetor[menor]->distancia );

	if((esquerda< minHeap->tam) && (minHeap->vetor[esquerda]->distancia < minHeap->vetor[menor]->distancia)){
		menor=esquerda;
	}
	//printf("Test debug\n" );

	if(direita< minHeap->tam && minHeap->vetor[direita]->distancia< minHeap->vetor[menor]->distancia)
		menor = direita;
	//printf("Test debug\n" );
	if(menor != idx)
	{
		/*As vertices a serem trocados*/
        HeapCelula *menorcelula = minHeap->vetor[menor];
        HeapCelula *idxcelula = minHeap->vetor[idx];
 		/*Troca posições*/
        minHeap->pos[menorcelula->numero] = idx;
        minHeap->pos[idxcelula->numero] = menor;
 
        /*troca celulas/vertices*/
        swapCelula(&minHeap->vetor[menor], &minHeap->vetor[idx]);
 
        minHeapifica(minHeap, menor);
	}
}
/*Diminui a distancia do vertice (atualiza o valor no heap)*/
void diminuirDistancia(MinHeap* minHeap, int v, int dist)
{
    int i = minHeap->pos[v];
    minHeap->vetor[i]->distancia = dist;
    while (i && minHeap->vetor[i]->distancia < minHeap->vetor[(i - 1) / 2]->distancia)
    {
        minHeap->pos[minHeap->vetor[i]->numero] = (i-1)/2;
        minHeap->pos[minHeap->vetor[(i-1)/2]->numero] = i;
        swapCelula(&minHeap->vetor[i],  &minHeap->vetor[(i - 1) / 2]);
 
        i = (i - 1) / 2;
    }
}
/*Verifica se é um min heap*/
int verificaminHeap( MinHeap *minHeap, int v)
{
   if (minHeap->pos[v] < minHeap->tam)
     return 1;
   return 0;
}
/*Imprime um grafo em lista adjacencia*/
void printG(grafo *G)
{
int v;
    for (v = 0; v < G->V; v++)
    {
        celula* aux = G->vetor[v].head;
        printf("\n Nó %d\n head ", v);
        while (aux)
        {
            printf("-> %d", aux->dest);
            aux = aux->seg;
        }
        printf("\n");
    }
  
}
/*Verficica se o tamanho do heap é vaziou*/
int heapvaziou( MinHeap* minHeap)
{
    return minHeap->tam == 0;
}
/*Extrai o minimo */
HeapCelula* removeMin(MinHeap* minHeap)
{
    if (heapvaziou(minHeap))
        return NULL;
 
    /*Armazena o valor da raiz*/
     HeapCelula* raiz = minHeap->vetor[0];
 
    /* Substitui a raiz com o ultimo*/
    HeapCelula* ultima = minHeap->vetor[minHeap->tam - 1];
    minHeap->vetor[0] = ultima;
 
    /*Atualiza a ultima posição*/
    minHeap->pos[raiz->numero] = minHeap->tam-1;
    minHeap->pos[ultima->numero] = 0;
 	/*diminui o tamanho do heap e passa a raiz para o heapfica/remove a raiz */
    --minHeap->tam;
    minHeapifica(minHeap, 0);
 
    return raiz;
}
/*Calcula a menor distancia para uma vertice src considerado como fonte*/
/*O(ElogV)*/
void dijkstra(grafo* G, int src)
{
    int V = G->V;     /*Pega o tamanho do grafo*/
    int dist[V];      /*vetor de distancias utilizados*/ 
 
    /*Cria min heap*/ 
    MinHeap* minHeap = criarMinHeap(V);
 	/*Inicia o heap com valor 99999 em todos os pesos*/
    for (int v = 0; v < V; ++v)
    {
        dist[v] = 99999;
        minHeap->vetor[v] = inserirHeap(v, dist[v]);

        minHeap->pos[v] = v;
   //       printf("Vertice :%i\n",minHeap->pos[v] );
 	//       printf("Distancia: %i\n",minHeap->array[v] );
    }
 
    /*Colocar o valor da fonte como zero para que ele seja extraido primeiro*/
    minHeap->vetor[src] = inserirHeap(src, dist[src]);
    minHeap->pos[src]   = src;
    dist[src] = 0;
    diminuirDistancia(minHeap, src, dist[src]);
	/*Inicia o tamanho do minHeap como V*/ 
    minHeap->tam = V;
 
    /*todos os vertices de distancias não arrumadas*/
      while (!heapvaziou(minHeap))
    {
        HeapCelula* minHeapNode = removeMin(minHeap);
  		/*Valor do vertice removido*/	
        int u = minHeapNode->numero; 

 	
		celula* aux = G->vetor[u].head;
        while (aux != NULL)
        {
            int v = aux->dest;
 
            if (verificaminHeap(minHeap, v) && dist[u] != 99999 && aux->peso + dist[u] < dist[v])
            {
                dist[v] = dist[u] + aux->peso;
 
                /*Atualiza o valor de distancia*/
                diminuirDistancia(minHeap, v, dist[v]);
            }
            aux = aux->seg;
        }
    }
 	/*Imprime menor distancia da fonte*/
    imprimir(dist, V);
}

/*Imprime resultado de menor distancia*/
void imprimir(int dist[], int n)
{
    printf("Vertice   Distancia da fonte ate o Vertice\n");
    for (int i = 0; i < n; ++i)
        printf("%d \t\t %d\n", i, dist[i]);	
}

