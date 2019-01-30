#include<iostream>

using namespace std;

class printData
{
    public:
        void print(int i)
        {
            cout << "Printing int: " << i << endl;
        }
        void print(double f)
        {
            cout << "Printting float: " << f << endl;
        }
        void print(char* c)
        {
            cout << "printing character: " << c << endl;
        }
};



int main ()
{
    printData myData;
    myData.print(7.5);

    myData.print(3);

    myData.print((char*)"hello C++");


    return 0;
}
