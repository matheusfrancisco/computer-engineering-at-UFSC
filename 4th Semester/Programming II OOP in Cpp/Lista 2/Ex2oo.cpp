#include <iostream>
#include <string>

using namespace std;

class printmsg   ///definição de classe
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
    printmsg mymessageA; ///Variavéis auxiliares
    printmsg mymessageB;

    cout << "Please enter your first message " << endl;
    getline(cin, some_message1); /// função para ler string com espaços
    //cin >> some_message1;
    cout << endl;

    mymessageA.displaymessage(some_message1);

    cout << "\n \nPlease enter your second message " << endl;
    getline(cin, some_message2);
    cout << endl;

    mymessageB.displaymessage(some_message2);

    return 0;
}

