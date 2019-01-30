#include<iostream>

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
    float salary;
    Data birthday;
};

Person getinfoperson(Person p);
void printperson(Person p);
Data getinfodata(Data d);
void printData(Data d);

int main()
{
    Person p1, p2;

     cout<<"Estrutura de dados com data \n";

     cout <<"\n\n Entrada/saida de dados ";
     p1 = getinfoperson(p1);
     printperson(p2);

    return 0;
}

Person getinfoperson(Person p)
{
    cout << "\n digite numero identificador: ";
    cin>>p.person_id;

    cin.ignore();
    cout<< "digite nome completo: ";
    cin.get(p.name,50);

    cout<<"digite salario: ";
    cin >>p.salary;


    cout<< "digite a data de nascimento: ";
    p.birthday = getinfodata(p.birthday);

    return p;
}

void printperson(Person p)

{
    cout <<"\n Dados pessoais."<<endl;
    cout<< "numero identificador:" << p.person_id<<endl;
    cout<<"Nome: "<<p.name<<endl;
    cout<< "salario: "<<p.salary<<endl;
    cout <<"data de nasciment: ";
    printData(p.birthday);


}

Data getinfodata(Data d)
{
    cout <<"Digite dia: ";
    cin>>d.day;
    cout<<" Digite mes: ";
    cin>>d.month;
    cout<<"Digite ano: ";
    cin>>d.year;

    return d;

}

void printData(Data d)
{
    cout<<"\n Dia "<<d.day<<
        " Mes: "<<d.month<<
        " Ano: "<<d.year<<endl;

}
