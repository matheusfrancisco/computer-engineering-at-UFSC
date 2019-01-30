#include <iostream>
#include "Time.h"

using namespace std;

int main()
{
    Time t1(23, 59, 59);

    cout << "t1: initial state \n";
    t1.print();

    t1.sethour(12);
    t1.setMinute(30);
    t1.setSecond(15);
    cout << "t1:set values \n";
    t1.print();

    cout << "object t1 state:  \n";
    cout << "Hour is    " << t1.gethour()   <<endl;
    cout << "Minute is  " << t1.getMinute() << endl;
    cout << "Seconde is  " << t1.getSecond() << endl;

    Time t2;
    cout << endl << endl;
    cout << "t2: set values   \n";
    t2.print();
    t2.setTime(1, 2, 3);
    cout << "t2: set values  \n";
    t2.print();

    cout << endl << endl;
    Time t3(12);
    cout << "t3: partial initialization \n";
    t3.print();

    cout << endl << endl;

    Time t4(23, 59, 58);
    cout << "t4: initial state \n";
    t4.print();
    t4.nextSecond();
    cout << "t4: after nextSecond \n";
    t4.print();
    t4.nextSecond();
    cout << "t4: after nextSecond \n";
    t4.print();

    cout << endl << endl;

    Time t5(25, 61, 99);
    cout << "t5: invalid initialization \n";
    t5.print();

    return 0;
}
