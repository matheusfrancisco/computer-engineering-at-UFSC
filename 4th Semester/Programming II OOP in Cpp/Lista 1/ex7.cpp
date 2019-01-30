#include<iostream>

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
    cout << "estrutura person \n ";

    cout << "\n Entradada de dados para p1 \n ";
    cout << "Digite numero identificador : ";
    cin>> p1.person_id;

    cin.ignore();
    cout << "digite nome completo:";
    cin.get(p1.name, 50);

    cout << "Digite salario";
    cin >> p1.salary;

    printPerson(p1);




    return 0;
    }

void printPerson(Person P)
{
    cout <<" \n ados pessoais"<<endl;
    cout << "numero identificador:" << P.person_id <<endl;
    cout <<"nome: "<< P.name << endl;
    cout << "salario:  " << P.salary << endl;

}
