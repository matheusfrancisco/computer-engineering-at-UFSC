#include <iostream>

using namespace std;
    struct Data
    {
        int day;
        int month;
        int year;
    }d1,d2={21,11,1971};

int main()
{
    Data d3= {22,12,1982}; // inicializacao
    Data d4;;

    cout <<" Estrutura Data \n";

    cout<<"\n Entrada de dados para D1 \n";
    cout<<" Digite dia: ";
    cin>>d1.day;
    cout<<" Digite mes: ";
    cin>>d1.month;
    cout<<" Digite ano: ";
    cin>>d1.year;
    cout<<" Voce digitou: ";
    cout<<d1.day<<"/"<<d1.month<<"/"<<d1.year<<endl;

    cout<<" \n Dados de D2: ";
    cout<<d2.day<<"/"<<d2.month<<"/"<<d2.year<<endl;

    cout<<" \n Dados de D3: ";
    cout<<d3.day<<"/"<<d3.month<<"/"<<d3.year<<endl;

    cout<<"\n Entrada de dados para D4 \n";
    cout<<" Digite dia: ";
    cin>>d4.day;
    cout<<" Digite mes: ";
    cin>>d4.month;
    cout<<" Digite ano: ";
    cin>>d4.year;
    cout<<" Voce digitou: ";
    cout<<d4.day<<"/"<<d4.month<<"/"<<d4.year<<endl;

    return 0;
}
