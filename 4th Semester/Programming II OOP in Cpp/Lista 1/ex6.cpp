#include<iostream>
using namespace std;

struct Person
{
    int Person_ip;
    char name[50];
    float salary;
};

Person getinfoPerson(Person P);
void printPerson(Person P);

int main ()
{
    Person p1,p2;

    cout <<"estrutura person \n";

    cout<<"\n\n Entrada/saida de dados para p1\n";
    p1 = getinfoPerson(p1);
    printPerson(p1);

    cout << "Digite numero identificador:";
    cin >> p.person_id;

    cin.ignore();
    cout << "Digite nome completo: ";
    cin.get(p.name, 50);

    cout <<"Digite salario: ";
    cin>> p.salary;


    return 0;
}
