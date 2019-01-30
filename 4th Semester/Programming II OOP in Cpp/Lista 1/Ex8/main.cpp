#include <iostream>

using namespace std;

struct Data
{
    int day;
    int month;
    int year;
};

struct Person
{
    int person_id;
    char name[50];
    double salary;
    Data birthday;
};

Person getInfoPerson(Person p);
void printPerson(Person p);
Data getInfoData(Data d);
void printData(Data d);

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

Person getInfoPerson(Person p)
{
    cout<<"\n Digite numero identificador: ";
    cin>>p.person_id; // entra e guarda o id nessa variavel

    cin.ignore(); // to flush the newline out of the bufffer after cin to getline
    cout<<"\n Digite nome completo: ";
    cin.get(p.name, 50);// guarda o nome da pessoa

    cout<<"\n Digite o salario: ";
    cin>>p.salary;

    cout<<"\n Digite a data de nascimento\n ";
    p.birthday = getInfoData(p.birthday);

    return p;
}

void printPerson(Person p)
{
    cout<<"\n ----------Dados pessoais ----------"<<endl;
    cout<<" Numero identificador: "<<p.person_id<<endl;
    cout<<" Nome: "<<p.name<<endl;
    cout<<" Salario: "<<p.salary<<endl;
    cout<<" Data de nascimento: ";
    printData(p.birthday);
    return;
}


Data getInfoData(Data d)
{
    cout<<" Digite dia: ";
    cin>>d.day;
    cout<<" Digite mes: ";
    cin>>d.month;
    cout<<" Digite ano: ";
    cin>>d.year;
    return d;
}

void printData(Data d)
{
    cout<<"\n Dia: "<<d.day<<" Mes: "<<d.month<<" Ano: "<<d.year<<endl;
    return;
}
