#include <iostream>
#include <string>

using namespace std;

class printmsg   ///defini��o de classe
{
public:

    void displaymessage(string msg) /// funcao que exibe uma mensagem
    {
        cout << "Sua menssagem: " << msg << "!!!" << endl;
    }

};

int main ()
{
    string some_message1;
    string some_message2;
    printmsg mymessageA; ///Variav�is auxiliares
    printmsg mymessageB;

    cout << "Please enter your first message " << endl;
    getline(cin, some_message1); /// fun��o para ler string com espa�os
    //cin >> some_message1;
    cout << endl;

    mymessageA.displaymessage(some_message1);

    cout << "\n \nPlease enter your second message " << endl;
    getline(cin, some_message2);
    cout << endl;

    mymessageB.displaymessage(some_message2);

    return 0;
}

