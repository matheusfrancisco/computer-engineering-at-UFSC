
int main()
{
    int n[5];
    int i;

    for ( i = 0; i < 5; i++)
    {
        printf("\n Digite elemento %i do vetor ", i);
        scanf("%i", &n[i]);

    }
    printf("\n Elemento    valor \n");
    for ( i= 0; i<5 ; i++){
        printf(" %i         %i \n",i, n[i]);
    }
}
