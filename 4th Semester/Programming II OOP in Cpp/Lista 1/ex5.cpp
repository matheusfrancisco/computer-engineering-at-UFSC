#include<iostream>


using namespace std;

struct Data
{
    int day;
    int month;
    int year;
};
Data d1, d2 = {21,11,1971};

void printData(Data d);

int main ()
{
   Data d3 = {22,12,1982};
   Data d4;

   cout<<"estrutura data \n";

   cout << "\n entrada de dados para d1 \n ";
   cout << " Digite dia: ";
   cin >> d1.day;
   cout << "digite mes:";
   cin >> d1.month;
   cout << "digite ano:";
   cin >> d1.year;

   cout <<"\n Data d1: ";
   cout <<" \nDia: "<<d2.day<<
            "mes"<<d2.month<<
            "Ano"<<d2.year<<endl;

    cout << "\n Data d1:";
    cout<< "\n Dia "<< d3.day<<
            "Mes "<< d3.month<<
            "Ano" << d3.year<<endl;


    return 0;
}
