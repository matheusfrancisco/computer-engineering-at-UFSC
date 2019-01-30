#include<iostream>

using namespace std;

struct data
{
    int dia;
    int mes;
    int ano;
};

struct Person
{
    char cargo[50];
    float beneficios;
    data admissao;
};

Person novaPessoa(Person p);
Person mostraPessoa(Person p);
data dataAdmissao(data d);
void printData(data d);

int main ()
{

    Person vetor[5];
    int i;
    Person p;

    for(i = 0; i < 5; i++)
        vetor[i]= novaPessoa(p);



    return 0;

}

Person novaPessoa(Person p)
{

     cout << "Digite os beneficios: ";
    cin>>p.beneficios;

    cin.ignore();
    cout << "CARGO: ";
    cin>>p.cargo;

    cout<<"Digite a data de admissao: ";
    p.admissao  = dataAdmissao(p.admissao);

    return p;

}

void printperson(Person p)

{
    cout<< "CARGO:" << p.cargo<<endl;
    cout << "BENEFICIOS: "<<p.beneficios<<endl;
    cout<<"data de admissao: ";
    printData(p.admissao);


}


data dataAdmissao(data d)
{

    cout <<"Digite dia: ";
    cin>>d.dia;
    while(d.dia<0 ||d.dia>31)
    {
        cout<<"dia invalido \n";
        cin>> d.dia;
    }
    cout<<" Digite mes: ";
    cin>>d.mes;
     while(d.mes<0 ||d.mes>12)
    {
        cout<<"mes invalido \n";
        cin>> d.mes;
    }
    cout<<"Digite ano: ";
    cin>>d.ano;


    return d;

}

void printData(data d)
{
    cout<<"\n Dia "<<d.dia<<
        " Mes: "<<d.mes<<
        " Ano: "<<d.ano<<endl;

}

