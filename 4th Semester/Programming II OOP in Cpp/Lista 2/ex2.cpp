#include<iostream>
#include<string>
using namespace std;

class PrintMsg
{
public:
    //funcao que exibe mensagem
    void displayMessage(string msg)
    {
        cout<<"Your message: "<< msg << " !!! "<<endl;
    }
};

int main()
{
    string some_message1;
    string some_message2;
    PrintMsg myMessageA;
    PrintMsg myMessageB;

    cout << "Please enter your first message " << endl;
    getline(cin,some_message1);
    cout << endl;

    myMessageA.displayMessage(some_message1);

    cout <<  "\n \n Please enter enter your second message " << endl;
    getline(cin,some_message2);
    cout << endl;
    myMessageB.displayMessage(some_message2);


 return 0;
}

