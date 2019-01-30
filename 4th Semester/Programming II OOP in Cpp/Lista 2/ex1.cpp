#include<iostream>

using namespace std;

class PrintMsg
{
public:
    //funcao que exibe mensagem
    void displayMessage()
    {
        cout<<"WELCOME "<<endl;
    }
};

int main()
{
 PrintMsg myMessage;
 myMessage.displayMessage();

 return 0;
}
