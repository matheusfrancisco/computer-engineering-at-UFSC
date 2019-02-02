#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

struct celula
{
	int num;
	struct celula * seg;
	struct celula * ant;
};

typedef struct celula Numero;
/*Gerar numeros  aleatoriamente 0 ou 1*/
int gerarNumeros(int n);
/*Função que retorna do tamanho da lista*/
int numeroDigitos(Numero * lst);
/*Seed*/
void geraSeed();
/*Gerar uma lista de tamanho de digitos(numeros)*/
void geraLista(Numero *lst, int numeros);
/*Insere na lista (inicio)*/
void insereLista(Numero *lst, int num);
/*Imprime a lista*/
void imprimeLista(Numero * lst);
/*Insere na lista (Fim)*/
void insereListaFim(Numero *lst, int num);
/*função para desalocar a lista celula por celula utilizando o free*/
void desalocaLista(Numero * lst) ;
/*Função recursiva que pede emprestado Utilizada na subtração*/
void pedeEmprestado(Numero * lst);
/*Essa função retorna a lista deslocada n digitos para direita exemplo 10 com 2 deslocamento 1000*/
void deslocaDireita(Numero * a, int n);
/*Verifica qual numero é maior */
int numMaior(Numero *head, Numero *head2);
/*Função para limpar zeros da lista*/
void limpaZero(Numero *head);
/*Verificar se o numero é igua (não utilizada)*/
int numIgual(Numero *head, Numero *head2);
/*Remover numero */
void removeNumero(Numero * rm) ;
/*insereZeros utilizada na multiplicação iterativa*/
void insereZeros(Numero *head, int n, int digito);
/*Desloca para esquerda a lista utilizado na mult Recursiva retorna o ultimo digito*/
int deslocaEsquerda(Numero * a);
/*deslocamento direita desloca apenas uma vez */
void dsDireita(Numero * a);

/*Cria a lista*/
Numero * criaLista(int n);
/*Função divide a lista pega 1010 retorna n bits mais a esquerda n =2 então return 10*/
Numero * DivideEsquerda(Numero *a, int n);
/*Função divide a lista pega 1010 retorna n bits mais a direita n =2 então return 10*/

Numero * DivideDireita(Numero *a, int n);
/*Soma dois numeros binarios*/
Numero * soma(Numero *head_n1, Numero *head_n2);
/*Subtrai dois numeros binarios*/
Numero * subtrai(Numero * a, Numero * b);
/*multiplicação karatsuba retirada o pseudo codigo do site IME-USP*/
Numero * multiplicaKaratsuba(Numero * head1, Numero *head2, double tam);
/*copia a lista e retorna com endereço novo*/
Numero * copia(Numero * a);

/*Multiplicação iretariva funciona porém só até numero com numeros grandes porém 
demora muito para retornar mas recomendo testar em computadores potentes*/
Numero * multiplicaIterativo(Numero *head1, Numero *head2);
/*Multiplicação recursiva */
Numero * multiplicaRecursivo(Numero * a, Numero * b);
/*Não funciona(se der tempo arrumar) tentativa diferente de Karatsuba*/
Numero * multBin(Numero *head1, Numero *head2);
/*Não funciona(se der tempo arrumar) tentativa diferente de Karatsuba*/
Numero * multK(Numero * head1, Numero *head2,int n);


int main(){
	Numero * head_n1, * head_n2, * resposta ,*r, *rst;
	Numero * esq;
	Numero * dir;
	Numero * head1;
	Numero * head2;
	Numero *sub;
	int d;
	clock_t timer;
	clock_t timer2;
	srand(time(NULL));
	srand(time(NULL));
	
	double value;
	double chao,teto ;
	

	geraSeed();

	printf("Insira a quantidade de DIGITOS do seu numero binario\n");
    scanf("%d", &d);

    /*testando floor e ceil
    value = d;
    value = value/2;
    chao = floor(value);
    teto =  ceil(value);

    printf("%lf\n", teto);
 	printf("%lf\n", chao);

	*/
    
 	

 	r =  criaLista(1);
 	rst = criaLista(1);
	head_n1 = criaLista(1); 
    head_n2 = criaLista(1);
    
    printf("Criando os dois numeros... \n\n");

	geraLista(head_n1, d);
    geraLista(head_n2, d);
    printf("\n");
    imprimeLista(head_n1);
    printf("\n");
    imprimeLista(head_n2);
    printf("\n");
   
    /*Aparentemente funciona*/
    /*
    int max = numMaior(head_n1, head_n2);
    if(max == 1)
    {
    	timer = clock();
    	r = multiplicaRecursivo(copia(head_n1), copia(head_n2));
    	timer = clock() - timer;
    	//printf("O tempo da multiplicação normal %f segundos.\n", ((float)timer)/CLOCKS_PER_SEC);

    }
    else
    {
    	timer = clock();
   		r = multiplicaRecursivo(copia(head_n2), copia(head_n1));
   		timer = clock() - timer;
    }

    printf("Respota  1: \n");
    
    imprimeLista(r);
    printf("\n");
    printf("O tempo da multiplicação normal %f segundos.\n", ((float)timer)/CLOCKS_PER_SEC);
	*/
    //printf("\n");
    /*estou passando o numero maior primeiro pois no karatsuba minha subtração as vezes não retorna negativos*/
	int max2 = numMaior(head_n1, head_n2);
    if(max2 == 1)
    {

    	timer2 = clock();
    	rst = multiplicaKaratsuba(copia(head_n1), copia(head_n2),d);
  		timer2 = clock() - timer2;

    }
    else
    {
    	timer2 = clock();
   		rst = multiplicaKaratsuba(copia(head_n2), copia(head_n1),d);
    	timer2 = clock() - timer2;
    }
    
    printf("Respota 2 : \n");
     
    imprimeLista(rst);

    printf("\n");
    printf("O tempo da multiplicação normal %f segundos.\n", ((float)timer2)/CLOCKS_PER_SEC);

    /*Teste de divisão das lista*/
	//DEBUG DIVIDIR NO MEIO
	//head1 = DivideEsquerda(head_n1, teto  ); 
  	//head2 = DivideDireita(head_n1, chao);
  	
  	/*Teste da função de deslocamento para direita ou seja o numero é 111
  	se deslocar duas vezes o numero sera 11100*/
    //DEBUG DESLOCAMENTO
    //deslocaDireita(head1, chao);

  	//PRINTAR A PARTE Xe e Xd de um numero 
 	/*printf("\n Parte 1");
 	printf("\n");
  	imprimeLista(head1);  

  	printf("\n Parte 2");
    printf("\n");
  	imprimeLista(head2);     
    printf("\n");
    */
    
    /*Testando função de soma com a parte esquerda deslocada ((2^n/2)*Xl)+Xr
    essa soma tem que dar o valor do numero esta funcionando .Funcionando*/    
    //DEBUG SOMA PARTE DESLOCADA
    //resposta = soma(head1, head2);

    /*Garantindo a subtração do MAIOR - MENOR*/
    /*DEBUG SUBTRAI
    if(int maior = numMaior(head1,head2) == 1)
    {
 	  	sub = subtrai(head1,head2);
    }
    else
    {
   		sub = subtrai(head2,head1);	
    }
    */
    /*Printa a soma*/
    /*DEBUG - IMPRIME A SOMA QUE TEM QUE SER IGUAL AO PRIMEIRO NUMERO, POIS É PARTE 2**n/2 (Xl)+(Xr)*/
    /*
    printf("Soma \n");
  	imprimeLista(resposta);     
    printf("\n");
    */
    /*Printa a subtração*/
    /*printf("Subtração \n");
    imprimeLista(sub);
    printf("\n");
	*/
    
    printf("\n");
    desalocaLista(head_n1);
    desalocaLista(head_n2);
    //desalocaLista(head1);
    //desalocaLista(head2);
    //desalocaLista(r);
    getchar();



	return 0;
}

Numero * multiplicaKaratsuba(Numero * head1, Numero *head2, double tam){
    if(tam <= 3){
       return multiplicaRecursivo(head1, head2);
    }
    else{
        double m;
        double teto, chao;
        int i;

        Numero *result = (Numero*) malloc(sizeof(Numero));
        Numero *a = criaLista(0);
        Numero *b = criaLista(0);
        Numero *c = criaLista(0);
        Numero *d = criaLista(0);
        Numero *ac, *bd, *x,*ab,*cd;
        Numero * y = criaLista(0);
        Numero *t = criaLista(0);
        Numero *u = criaLista(0);
       
        

        m=(tam/2);
        
        teto = ceil(m);
        chao = floor(m);

       // printf("%lf : %lf \n", teto, chao);
       /*Debug dividir a lista no Xe , Xr , Ye, Yd*/
       /* printf("\n");
        imprimeLista(head1);
        printf("\n");
        printf("\n");
        imprimeLista(head2);
        printf("\n");
        */
        a = DivideEsquerda(head1, chao);

        b = DivideDireita(head1, teto);

        c = DivideEsquerda(head2 , chao);

        d = DivideDireita(head2, teto);

        /*
        printf("\n");
        imprimeLista(a);
        printf("\n");
        imprimeLista(b);
        printf("\n");
        imprimeLista(c);
        printf("\n");
        imprimeLista(d);
        printf("\n");
        */
       
        

        ac = multiplicaKaratsuba(a, c, chao);
        bd = multiplicaKaratsuba(b, d, teto);
        ab = soma(a, b);
        cd = soma(c, d);
      
        y = multiplicaKaratsuba(ab, cd, numeroDigitos(ab));
        u = subtrai(y, ac);
        u = subtrai(u, bd);

        //inserir casas 0 nas listas para a soma
      
        deslocaDireita(ac,teto*2);
      
       
        deslocaDireita(u,teto*2);


        result = soma(ac, u);
        result = soma(result, bd);

        return result;

 	}
 }
Numero * multBin(Numero *head1, Numero *head2)
{
	/*pseudo codigo 
Algoritmo B.3 (mult-bin)
Entrada Dois n´umeros bin´arios p, q com n bits.
Sa´ıda O produto r = pq (que tem ≤ 2n bits).
1 i f n = 1 then
2 return pq { mu lt ip l ica do is b its em O(1) }
3 e l s e
4 x := p1 + p2
5 y := q1 + q2
6 z := mult-bin(x2, y2)
7 t := (x1y1)2n + (x1y2 + x2y1)2n/2 + z
8 u := mult-bin(p1, q1)
9 v := mult-bin(p2, q2)
10 r := u2
n + (t − u − v)2n/2 + v
11 return r
12 end i f
onde 
p1 = n/2 bits a direita
p2 = n/2 bits a esquerda
para q a mesma coisa
x = p1 + p2 
x1 = 1 bit
x2 = n/2 bits restantes*/
/*Algoritmo não funcionou muito bem :(*/
	Numero * aux;
	int tam, tam2;
	int max;
	tam = numeroDigitos(head1);
	tam2 = numeroDigitos(head2);
	Numero * c;
	if (tam >= tam2)
	{
		max = tam;
		aux = head1;
	}else
	{
		max = tam2;
		aux = head2;
	}
	if(max== 1)
	{
		if(numeroDigitos(head2) == 1) {
        switch(head2->seg->num) {
            case 0:
                c = criaLista(1);
                insereLista(c, 0);
                break;
            case 1:
                c = copia(head1);
                break;
            default:
                printf("Erro no default do switch");
                break;
        }
        return c;
    }
	}else
	{
		Numero *x, *y =  criaLista(0);
		Numero *x1, *y1= criaLista(0);
		Numero *x2, *y2= criaLista(0);
		Numero *p1, *p2, *q1, *q2,*a,*b,*c,*r,*u,*v,*rst,*t = criaLista(0);
		Numero *z = criaLista(0);
		p2 = DivideEsquerda(head1,tam/2);
		p1 = DivideDireita(head1,tam/2);
		q2 = DivideEsquerda(head2,tam/2);
		q1 = DivideDireita(head2,tam/2);
		x= soma(p1,p2);
		y = soma(q1,q2);
		//int tx, ty;
		//tx = numeroDigitos(x);
		//ty = numeroDigitos(y);
		x1 = DivideDireita(x,1);
		x2 = DivideEsquerda(x,numeroDigitos(x)-1);
		y1 = DivideDireita(y,1);
		y2 = DivideEsquerda(y,numeroDigitos(y)-1);
		z = multBin(x2,y2);
		a = multBin(x1,y1);
		b = multBin(x1,y2);
		c = multBin(x2,y1);
		deslocaDireita(a,numeroDigitos(head1));
		b = soma(b,c);
		deslocaDireita(b,numeroDigitos(head1)/2);
		t = soma(a,b);
		t = soma(t,z);
		u = multBin(p1,q1);
		v = multBin(p2,q2);
		r = subtrai(t,u);
		r = subtrai(r,v);

		deslocaDireita(u,numeroDigitos(head1));
		deslocaDireita(r,numeroDigitos(head1)/2);

		rst = soma(u,r);
		rst = soma(rst, v);
		return rst;



	}
}

/*Algoritmo funciouno site visto no IME-USP*/


/*Numero * multK(Numero * head1, Numero *head2, int n)
{
	    Numero *x1 = criaLista(0);
        Numero *x0 = criaLista(0);
        Numero *y1 = criaLista(0);
        Numero *y0 = criaLista(0);
        Numero *x1y1, *x0y0, *x,*ab,*cd;
        Numero * p = criaLista(0);
        Numero *t = criaLista(0);
        Numero *u = criaLista(0);
        Numero *c = criaLista(0);

        // vamos garantir que sempre sera iguais
        
        
		if(numeroDigitos(head2) == 1) {
        switch(head2->seg->num) {
            case 0:
                c = criaLista(1);
                insereLista(c, 0);
                break;
            case 1:
                c = copia(head1);
                break;
            default:
                printf("Erro no default do switch");
                break;
        }

        return c;
   		}
   		

        x1 = DivideEsquerda(head1, n/2);

        x0 = DivideDireita(head1, n/2);

        y1 = DivideEsquerda(head2 , n/2);

        y0 = DivideDireita(head2, n/2);

        p = multK(soma(copia(x1),copia(x0)),soma(copia(y1),copia(y0)), n/2);

        x1y1 = multK(x1,y1,n/2);
        x0y0 = multK(x0, y0,n/2);

        t= subtrai(p,x1y1);
        t = subtrai(t,x0y0);

        deslocaDireita(x1y1,n);
        deslocaDireita(t,n/2);
        u = (x1y1,t);
        return soma(u,x0y0);
    
}	*/

/*Funciona para algoritmos até 400 digitos*/
Numero *multiplicaIterativo(Numero *head1, Numero *head2) {
    Numero *aux1 = head1->ant;
    Numero *aux2 = head2->ant;
    Numero *result = criaLista(1); //recebe o valor da soma total
    Numero *tmp = criaLista(1); // recebe num1*num2..seguido de zeros
    Numero *exclude;
    int total = 0;
    int qntZeros1 = 0; //CONTANDO A QUANTIA DE ZEROS PARA A SOMA
    int qntZeros2 = 0; //CONTANDO A QUANTIA DE ZEROS PARA A SOMA
    while(aux2 != head2) {
        aux1 = head1->ant; //voltando sempre pro final
        while(aux1 != head1) {
            total = aux2->num*aux1->num;
            tmp = criaLista(1); //Precisa sempre ser renovada
            insereZeros(tmp, qntZeros1+qntZeros2, total); //A multiplicacao recebe uma quantia de zeros = zero1+zero2
            if(result != result->seg) { // SE RESULTE NÃO ESTIVER VAZIA
                result = soma(result, tmp); //Soma vai ser incrementado sempre
            }
            else {
                result = tmp; //Se nao o result sera apenas a primeira multiplicacao
            }
            qntZeros1++;
            aux1 = aux1->ant;
        }
        aux2 = aux2->ant;
        total = 0; //zerando o total
        qntZeros1 = 0; //apenas o qntzeros do numero 1 precisa ser limpo
        qntZeros2++;
    }
    if(result->seg->num == 0) { //Apagando o zero que aparece de vez em quando
        exclude = result->seg;
        result->seg = exclude->seg;
        free(exclude); //liberando a memoria que estava alocada pra aquela celular
    }
    return result;
}

void insereZeros(Numero *head, int n, int digito) 
{
    int auxNum;
    while(n != 0) { //Inserindo primeiros todos os 0
        insereLista(head, 0);
        n--;
    }
    //Variavel digito sempre tera 2 casas decimais apenas
    auxNum = digito%10;
    digito = (digito - auxNum)/10;
    insereLista(head, auxNum);
    insereLista(head, digito);
}
/*Funcionando Multiplica Recursivo */
Numero * multiplicaRecursivo(Numero * a, Numero * b) {
    Numero * c, * aux;
    int resto, i;

    aux = criaLista(1);

    if(numeroDigitos(b) == 1) {
        switch(b->seg->num) {
            case 0:
                c = criaLista(1);
                insereLista(c, 0);
                break;
            case 1:
                c = copia(a);
                break;
            default:
                printf("Erro no default do switch");
                break;
        }
        return c;
    }


    resto = deslocaEsquerda(b);
    c = multiplicaRecursivo(a, b);

    insereLista(aux, resto);
    dsDireita(c);

    return soma(c, multiplicaRecursivo(a, aux));
}

int deslocaEsquerda(Numero * a)
{
    Numero * aux;
    int numero;

    numero = a->ant->num;

    if(a->seg != a) { /**/
        aux = a->ant;
        aux->ant->seg = a;
        a->ant = aux->ant;
        free(aux);
    }
    if(a->seg == a) {
        insereLista(a, 0);

    }
    return numero;
}



Numero * copia(Numero * a)
{

    Numero * nova, * aux;

    aux = a->ant;
    nova = criaLista(a->num); // cria nova cabeça igual a cabeça de a

    while(aux != a) { // percorre do final até o começo
        insereLista(nova, aux->num);
        aux = aux->ant;
    }
    return aux; // devolve a cabeça do numero copiado
}


Numero * subtrai(Numero * a, Numero * b) {
    Numero * aux1, * aux2, * c;
    int subtracao, dif,i;

    // se b > a entao o algoritmo nao funciona, entao mudamos
    // o sinal do número e chamamos a funcao com os argumentos invertidos
    /*if(maior(a, b) == b) {
        c = subtrai(b, a);
        c->num *= -1; // negativa o resultado, já que b > a
        return c;
    }*/
    if(numeroDigitos(a) > numeroDigitos(b)){
        dif =  numeroDigitos(a) - numeroDigitos(b);
        for(i = 0; i < dif; i++){
            insereLista(b,0);
        }
    }

    aux1 = a->ant; // elemento ants da cabeca = final
    aux2 = b->ant;
    c = criaLista(1);

    while(aux1 != a || aux2 != b) {
        subtracao = 0;

        if(aux1->num - aux2->num < 0) {
            pedeEmprestado(aux1); // pedimos emprestado para os dígitos antriores
            subtracao = 1 ; // subtração feita com o empréstimo
        } else {
            subtracao = aux1->num - aux2->num; // não precisa fazer o empréstimo, subtração normal
        }
        insereLista(c, subtracao); // insere na lista o valor subtraido

        // os dois ponteiros percorrerão para a esquerda até encontrar a cabeça da lista
        if(aux1 != a) {
            aux1 = aux1->ant;
        }
        if(aux2 != b) {
            aux2 = aux2->ant;
        }

    }

    //agora uma das duas listas chegou na cabeça, a operação é só o próprio número
    while(aux1 != a) {
        insereLista(c, aux1->num);
        aux1 = aux1->ant;
    }

    while(aux2 != b) {
        insereLista(c, aux2->num);
        aux2 = aux2->ant;
    }
    limpaZero(c); //Estava gerando zeros ao começo do numero na saida
    return c;
}
//DeslocaDireita - Inseri apenas 1 zero por vez
void dsDireita(Numero * a) 
{
    if(a->seg->num != 0) { /*Não tem como colocar zero se o numero for 0*/
        insereLista(a->ant, 0); /*Insere*/
    }
}

Numero * soma(Numero *head_n1, Numero *head_n2)
 {
    Numero *aux1 = head_n1->ant;
    Numero *aux2 = head_n2->ant;
    Numero *soma = criaLista(1);
    int total = 0;
    int carry = 0; //utiliza para armazenar numero de estouro
    int i = 0;
    while (aux1 != head_n1 || aux2 != head_n2) 
    {

        if(aux1 != head_n1 && aux2 != head_n2) 
        {
            total = aux1->num + aux2->num +carry;
        } 
        else if (aux1 == head_n1)
        {
            total = aux2->num + carry;
        } 
        else if (aux2 == head_n2)
        {
            total = aux1->num + carry;
        }


        if (total > 2) /*Caso a soma seja 3*/
        { 
            carry = 1; /*carry é 1*/
            total = 1; /*e o resultado é 1*/
            insereLista(soma, total); /*Insere 1 na lista*/
        }
        else if(total == 2) /*Soma 2*/
        { 
            carry = 1; /*Carry recebe 1 */
            total = 0; /*Soma é 0*/
            insereLista(soma, total); /*Inseri o zero*/
        }
        else 
        {
            carry = 0; /*zera o carry, exemplo caso seja 1 + 0 = 1*/
            insereLista(soma, total); /*inser o total exemplo: insere 1*/
        }
        if (aux1 != head_n1) {
            aux1 = aux1->ant;
        }
        if (aux2 != head_n2) {
            aux2 = aux2->ant;
        }
    }
    if(carry != 0) {
        insereLista(soma, carry);
    }

    return soma;
}
/*Desloca para direita adiciona um zero  a direita*/
void deslocaDireita(Numero * a, int n) 
{
	for(int i=0;i<n;i++)
	{
    //if(a->seg->num != 0) 
    //{ /*Não tem como colocar zero se o numero for 0*/
        insereLista(a->ant, 0); /*Insere*/
    //}
	}
}


Numero * DivideEsquerda(Numero *a, int n)
{
	Numero * esq;
	Numero * aux;
	aux= a->seg;
	esq = criaLista(0);
	
	for(int i=0; i<n; i++)
	{
		insereListaFim(esq,aux->num);
		aux = aux->seg;
		
	}
	return esq;
}

Numero * DivideDireita(Numero *a, int n){
	Numero * dir;
	Numero * aux;
	aux= a->ant;
	dir = criaLista(1);
	
	for(int i=0; i<n; i++)
	{

		insereLista(dir,aux->num);
		aux = aux->ant;
		
	}
	return dir;
}



/*Limpa zero do inicio da subtração*/
void limpaZero(Numero *head) 
{
    Numero *exclude;
    while(head->seg->num == 0) {
        exclude = head->seg;
        head->seg = exclude->seg;
        exclude->seg->ant = head;
        free(exclude);
    }
}

/*Retorna um ponteiro para uma copia do numero*/
Numero *copiaNum(Numero *head) 
{
    Numero *aux = head->ant;
    Numero *copia = criaLista(0);
    while(aux != head){
        insereLista(copia, aux->num);
        aux = aux->ant;
    }
    return copia;
}

//Função otimizada para comparar se o numero é maior comparando digito a digito
int numMaior(Numero *head, Numero *head2)
{
    //Numero 1 é maior que 2 somente se todos digitos de 1 é maior que 2
    Numero *aux1 = head->seg;
    Numero *aux2 = head2->seg;
    if(numeroDigitos(head) > numeroDigitos(head2)) {
        return 1;
    }
    if(numeroDigitos(head) == numeroDigitos(head2)){
        while(aux1 != head) {
            if(aux1->num < aux2->num){
                return 0;
            }
            aux1 = aux1->seg;
            aux2 = aux2->seg;
        }
        return 1;
    }
    else{
        return 0;
    }
}

/* Função utilizada na subtracao de um Numero
pede emprestado um numero de uma casa, balanceando o valor
na casa antrior */ 
/*Olhar esta função*/
void pedeEmprestado(Numero * a) 
{
    if((a->ant->num) == 0) {
        a->ant->num = 1;
        pedeEmprestado(a->ant);
    } else {

        a->ant->num -= 1;
    }
}

int numeroDigitos(Numero * lst)
{
    Numero * aux;
    int i;

    i = 0;
    aux = lst->seg;
    while(aux != lst) {
        aux = aux->seg;
        i++;
    }
    return i;
}

void desalocaLista(Numero * lst) { // remove todos os elementos da lista
    while(numeroDigitos(lst) != 0) { // enquanto a quantidade de digitos for diferente de zero ainda temos coisa para remover
        removeNumero(lst); // remove o elemento indicado
    }
}





/*Gerar numeros entre 0 ou 1 se n=2*/
int gerarNumeros(int n){
    return rand() % n ;
}

void geraSeed() { /* gera uma seed para nova sequencia de numeros aleatorios */
    srand((unsigned)time(NULL));
}





void removeNumero(Numero * rm) { // desaloca a memória da célula indicada
    Numero * aux;

    if(rm->seg == rm) { // se a celula for a cabeça
        free(rm); // desaloca rm
    } else { 
        aux = rm->ant;
        aux->ant->seg = rm;
        rm->ant = aux->ant;
        free(aux); // desaloca aux
    }
}

void insereListaFim(Numero *lst, int num)
{
    Numero *novo;
    novo = (Numero*) malloc(sizeof(Numero));
    novo->num = num; //acessa nova e bota o endereço da pessoa1 lá dentro;

    if(lst->seg == lst) {
        novo->seg = lst;
        lst->seg = novo;
        novo->ant = lst;
        lst->ant = novo;
        return;
    }
    novo->ant = lst->ant;
    lst->ant->seg = novo;
    novo->seg = lst;
    lst->ant = novo;    
}

void insereLista(Numero *lst, int num)
{
    Numero *novo;
    novo = (Numero*) malloc(sizeof(Numero));
    novo->num = num; //acessa nova e bota o endereço da pessoa1 lá dentro;

    if(lst->seg == lst) {
        novo->seg = lst;
        lst->seg = novo;
        novo->ant = lst;
        lst->ant = novo;
        return;
    }
    novo->seg = lst->seg;
    lst->seg = novo;
    novo->seg->ant = novo;
    novo->ant = lst;
}


void geraLista(Numero *numero, int numeros) 
{
    int i;
    i=0;
    while (i != numeros) { // deve ser colocado 256 digitos
        insereLista(numero, gerarNumeros(2)); //GERANDO NUMEROS DE 0-1 E GUARDANDO NA LISTA
        i++;
    }
}
/*Cria uma lista*/
Numero * criaLista(int n)
{
	Numero * head;
    head = (Numero *) malloc(sizeof(Numero));
    head->num = n;
    head->seg = head;
    return head;

}

/*Imprime a lista caso o primeiro numero tenha um -1 é porque*/
/*o numero é negativo 										 */
void  imprimeLista(Numero * lst)
{
	//int i;
	Numero * aux;
	aux = lst->seg;
	//i=0;
	/*Imprimir o sinal*/
	if(lst->num == -1)	{
		printf("-");
	}

	while(aux != lst)
	{
		printf("%i", aux->num);
		aux = aux->seg;
		//i++;
		
	}


}