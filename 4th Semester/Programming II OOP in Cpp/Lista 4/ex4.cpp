#include<iostream>
using namespacestd;

inline int Max(int x, int y)
{
    return(x > y)? x : y;
}
int main()
{
    cout << "MAX(20,10): " << Max(20,10) << endl;
    cout << "MAX(0,200): " << Max(0,200) << endl;
    cout << "MAX(100,300): " << Max(100,300) << endl;

    return 0;
}
