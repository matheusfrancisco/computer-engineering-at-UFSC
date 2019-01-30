#include <iostream>

using namespace std;

struct Person
{
    int person_id;
    char name[50];
    float salary;
};

void printPerson(Person p);

int main()
{
   Person p1;

   cout<<" Estrutura Pessoa \n";

   cout<<"\n Entrada de dados para P1 \n";
   cout<<"\n Digite numero identificador: ";
   cin>>p1.person_id; // entra e guarda o id nessa variavel

   cin.ignore(); // to flush the newline out of the bufffer after cin to getline
   cout<<"\n Digite nome completo: ";
   cin.get(p1.name, 50);// guarda o nome da pessoa

   cout<<"\n Digite o salario: ";
   cin>>p1.salary;

    printPerson(p1);


   return 0;
}

void printPerson(Person p)
{
    cout<<"\n ----------Dados pessoais ----------"<<endl;
    cout<<" Numero identificador: "<<p.person_id<<endl;
    cout<<" Nome: "<<p.name<<endl;
    cout<<" Salario: "<<p.salary<<endl;

}
