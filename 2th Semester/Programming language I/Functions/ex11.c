#include<stdio.h>

 int Maior(int v1,int v2,int v3){
   if((v1>v2)&&(v1>v3)){
    return v1;
   }
   else{
    if ((v2>v1) && (v2>v3))
     {
      return v2;
     }
    else
      {
        return v3;
    }
   }
 }
main(){
   int v1,v2,v3;
   printf("Digite 1 valores: ");
   scanf("%d",&v1);
    printf("Digite 2 valores: ");
   scanf("%d",&v2);
    printf("Digite 3 valores: ");
   scanf("%d",&v3);
   printf("Maior: %d" , Maior(v1,v2,v3));
   getch();
 }
