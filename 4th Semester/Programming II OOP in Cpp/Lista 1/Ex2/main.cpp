#include <iostream>

using namespace std;

int main()
{
    int var=1;
    double r, s, t;

    s = var/2;

    cout<<s<<endl;

    r = static_cast<double>(var)/2;
    cout<<r<<endl;

    t = (double)var/2;
    cout<<t<<endl;

    return 0;
}
