#include<iostream>

using namespace std;

struct Data
{
    int day;
    int month;
    int year;
} d1, d2 = {21,11,1971};

void printData(Data d);

int main()
{
    Data d3 = {22,12,1982};
    Data d4;

    cout <<"estrutura data \n";

    cout<<"\n entrada de dados d1 \n" ;
    cout <<"Digite dia: ";
    cin>>d1.day;
    cout<<" digite mes: ";
    cin>>d1.month;
    cout<<"Digite ano: ";
    cin>>d1.year;

    //cout<<d;
    printData(d1);
    return 0;
}

void printData(Data d)
{
    cout<<"\n dia: "<<d.day<<
        "  mes: "<<d.month<<
        "  ano: "<<d.year<<endl;

}
