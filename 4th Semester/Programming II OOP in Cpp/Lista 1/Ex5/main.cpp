#include <iostream>

using namespace std;
struct Data
{
        int day;
        int month;
        int year;
}d1,d2={21,11,1971};

void printData(Data d);

int main()
{
    Data d3= {22,12,1982}; // inicializacao
    Data d4;;

    cout <<" Estrutura Data \n";
    cout<<"\n Entrada de dados para D1: \n";
    cout<<" Digite o dia: ";
    cin>>d1.day;
    cout<<" Digite o mes: ";
    cin>>d1.month;
    cout<<" Digite o ano: ";
    cin>>d1.year;

    cout<<"\n Entrada de dados para D4: \n";
    cout<<" Digite o dia: ";
    cin>>d4.day;
    cout<<" Digite o mes: ";
    cin>>d4.month;
    cout<<" Digite o ano: ";
    cin>>d4.year;


    cout<<"\n Dados de D1: ";
    printData(d1);

    cout<<" \n Dados de D2: ";
    printData(d2);

    cout<<" \n Dados de D3: ";
    printData(d3);

    cout<<" \n Dados de D4: ";
    printData(d4);
    return 0;
}
void printData(Data d)
{
    cout<<"\n Dia: "<<d.day<<" Mes: "<<d.month<<" Ano: "<<d.year<<endl;

return;
}

