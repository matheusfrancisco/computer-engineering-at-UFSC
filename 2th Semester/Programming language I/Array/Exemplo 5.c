int main(){



const int arraySize = 10;
float n[arraySize];
float sum = 0;
int i;

for (i = 0 ; i< arraySize ; i++)
{
    printf("\n Digite elemento %i do vetor", i);
    scanf("%f ", &n[i]);

}
printf(" \n ELemento  valor \n ");
for ( i = 0 ; i < arraySize; i++)
    printf("%i                %.2f\n", i, n[i]);
for(i=0 ; i < arraySize; i++)
{
    sum = sum +n[i];
}

printf("\n Soma dos elementos do vetor = %.2f \n\n", sum);
return 0;

}
