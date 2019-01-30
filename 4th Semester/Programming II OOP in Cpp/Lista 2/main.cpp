#include <iostream>
#include <string>

using namespace std;
//definicao de classe
class PrintMsg
{
public:
    //funcao que exibe uma menssagem
    void displayMessage(string msg)
    {
        cout<<"LAGO AQUI, "<<msg<<" ! ! !"<<endl;
    }
};

int main()
{
    string some_message1;
    string some_message2;

    PrintMsg myMessageA;
    PrintMsg myMessageB;

    cout<<"Insira sua primeira menssagem "<<endl;
    getline(cin, some_message1); // leitura apra variavel some_message1
    cout<<endl;

    myMessageA.displayMessage(some_message1);

    cout<<"\n \nInsira sua segunda menssagem "<<endl;
    getline(cin, some_message2); //leitura para variavel some_message2
    cout<<endl;
    myMessageB.displayMessage(some_message2);

    return 0;
}
