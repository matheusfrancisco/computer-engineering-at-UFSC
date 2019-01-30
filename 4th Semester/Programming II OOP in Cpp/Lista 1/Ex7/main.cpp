#include <iostream>

using namespace std;
struct Person
{
    int person_id;
    char name[50];
    double salary;
};

Person getInfoPerson(Person p);
void printPerson(Person p);

int main()
{
    Person p1, p2;

    cout<<" Estrutura Person v2\n";

    cout<<"\n\n Entrada/Saida de dados para p1 \n";
    p1 = getInfoPerson(p1);
    printPerson(p1);

    cout<<"\n\n Entrada/Saida de dados para p2 \n";
    p2 = getInfoPerson(p2);
    printPerson(p2);

    return 0;
}

void printPerson(Person p)
{
    cout<<"\n ----------Dados pessoais ----------"<<endl;
    cout<<" Numero identificador: "<<p.person_id<<endl;
    cout<<" Nome: "<<p.name<<endl;
    cout<<" Salario: "<<p.salary<<endl;

    return;
}

Person getInfoPerson(Person p)
{
    cout<<"\n Digite numero identificador: ";
    cin>>p.person_id; // entra e guarda o id nessa variavel

    cin.ignore(); // to flush the newline out of the bufffer after cin to getline
    cout<<"\n Digite nome completo: ";
    cin.get(p.name, 50);// guarda o nome da pessoa

    cout<<"\n Digite o salario: ";
    cin>>p.salary;
    return p;
}
