#include<iostream>

using namespace std;

int main ()
{
    int* pvalue =NULL;
    pvalue = new int;

    *pvalue = 10;
    cout << "value of pvalue: " << *pvalue << endl;
    cout << "pvalue: " << pvalue << endl;

    cout << "___________FOR___________" << endl;
    for(int i = 1; i<=20; i++)
    {
        pvalue =new int;
        cout << "pvalue: " << pvalue << endl;
        delete pvalue;
    }


    return 0;
}
