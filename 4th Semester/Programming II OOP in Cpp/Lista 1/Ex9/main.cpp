#include <iostream>

using namespace std;

struct Data
{
    int day;
    int month;
    int year;
    int aday;
    int amonth;
    int ayear;
    int servico;
};

struct Person
{
    int person_id;
    char name[50];
    double salary;
    char cargo[50];
    double beneficios;
    double total;

    Data birthday;
};

Person getInfoPerson(Person p);
void printPerson(Person p);
Data getInfoData(Data d);
void printData(Data d);

int main()
{
    Person p1, p2, p3, p4, p5;
    cout<<" Estrutura Person v2\n";

    cout<<"\n\n Entrada/Saida de dados para P1 \n";
    p1 = getInfoPerson(p1);
    printPerson(p1);

    cout<<"\n\n Entrada/Saida de dados para P2 \n";
    p2 = getInfoPerson(p2);
    printPerson(p2);

    cout<<"\n\n Entrada/Saida de dados para P3 \n";
    p3 = getInfoPerson(p3);
    printPerson(p3);

    cout<<"\n\n Entrada/Saida de dados para P4 \n";
    p4 = getInfoPerson(p4);
    printPerson(p4);

    cout<<"\n\n Entrada/Saida de dados para P5 \n";
    p5 = getInfoPerson(p5);
    printPerson(p5);

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

    cout<<"\n Digite o cargo: ";
    cin>>p.cargo;

    cout<<"\n Digite o valor do beneficio: ";
    cin>>p.beneficios;

    p.total=p.salary+p.beneficios;

  //  cout<<"\n Digite data de admissao: ";
//    cin>>p.admissao;

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
    cout<<" Cargo: "<<p.cargo<<endl;
    cout<<" Beneficio: "<<p.beneficios<<endl;
    cout<<" Valor total de salario e beneficio: "<<p.total<<endl;
    cout<<" Datas de nascimento";
    printData(p.birthday);
    cout<<"\n";
    return;
}


Data getInfoData(Data d)
{
    int dia, mes, ano, adia, ames, aano;
    char data[30];
    cout<<"Digite dia: ";
    cin>>dia;
    while(dia<=0 || dia>31)
    {
        cout<<"#####Dia invalido#####\n Digite dia:";
        cin>>dia;
    }

    d.day=dia;

    cout<<" Digite mes: ";
    cin>>mes;
    while(mes<=0 || mes>12)
    {
        cout<<"#####Mes invalido#####\n Digite mes: ";
        cin>>mes;
    }

    d.month=mes;

    cout<<" Digite ano: ";
    cin>>ano;
    while(ano<=1940 || ano>1998)
    {
        cout<<"#####Ano invalido#####\n Digite ano ";
        cin>>ano;
    }

    d.year=ano;

    cout<<"Data de admissao";
    cout<<"\n Digite dia: ";
    cin>>adia;
    while(adia<=0 || adia>31)
    {
        cout<<"#####Dia invalido#####\n Digite dia:";
        cin>>adia;
    }

    d.aday=adia;

    cout<<" Digite mes: ";
    cin>>ames;
    while(ames<=0 || ames>12)
    {
        cout<<"#####Mes invalido#####\n Digite mes: ";
        cin>>ames;
    }

    d.amonth=ames;

    cout<<" Digite ano: ";
    cin>>aano;
    while(aano<=ano+17 || aano>1998)
    {
        cout<<"#####Ano invalido#####\n Digite ano ";
        cin>>aano;
    }

    d.ayear=aano;

    d.servico=2015-d.ayear;


    return d;
}


void printData(Data d)
{
    cout<<"\n Dia: "<<d.day<<" Mes: "<<d.month<<" Ano: "<<d.year<<endl;
    cout<<" Data de admissao"<<"\n Dia: "<<d.aday<<" Mes : "<<d.amonth<<" Ano: "<<d.ayear<<endl;
    cout<<" Tempo de servico "<<d.servico<<" anos"<<endl;
    return;
}
