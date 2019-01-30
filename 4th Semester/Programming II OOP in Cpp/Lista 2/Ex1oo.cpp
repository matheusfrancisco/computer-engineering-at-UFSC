#include <iostream>

using namespace std;

class printmsg   ///definição de classe
{
public:

    void displaymessage() /// funcao que exibe uma mensagem
    {
        cout << "EOQQQQQQQ LAGO!" << endl;
    }

};

int main ()
{
    printmsg mymessage;
    mymessage.displaymessage();

    return 0;
}

