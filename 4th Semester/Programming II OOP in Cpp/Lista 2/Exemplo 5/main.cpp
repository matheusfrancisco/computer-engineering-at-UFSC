#include<iostream>
#include "header.h"
using namespace std;

int main()
{
    Circle c1(1.2,"red");
    cout << "\n\n Circle 1 : " << endl;
    cout << "Radius: " << c1.getRadius() << " Area= " << c1.getArea()
         << "  Color " << c1.getColor() << endl;

    c1.setRadius(2.1);
    c1.setColor("blue");
    cout << "\n\n Circle1 :" << endl;
    cout << "Radius= " << c1.getRadius() << " Area= "  << c1.getArea()
         << "Color= "  << c1.getColor() << endl;
   /*============================================================================*/

    Circle c2;
    string my_color;
    double my_r;

    cout << "\n\n Circle 2(initial state): " << endl;
    cout << "Radius= " << c2.getRadius() << "    Area= " << c2.getArea() << endl
         << " Color= " << c2.getColor() << endl;

    cout << "\n\n Circle2: " << endl
         << "Please enter your radius: ";
    cin  >> my_r;
    c2.setRadius(my_r);

    cin.ignore();

    cout << "please enter your Color= ";
    getline(cin, my_color);
    c2.setColor(my_color);

     cout << "Radius= " << c2.getRadius() << "    Area= " << c2.getArea() << endl
         << " Color= "  << c2.getColor() << endl;

 /*============================================================================*/
    Circle c3;
    c3 = c2;

    cout << "\n\n Cirlce 3 (copy): " << endl
         << "  Radius = " << c3.getRadius() << " Area = " << c3.getArea() << endl
         << "  color=  "  << c3.getColor() << endl;

 /*============================================================================*/

    Circle c4(c1);

    cout << "\n\n Circle 4 (copy of circle):" << endl
         << " Radius = " << c4.getRadius() << "Area = " << c4.getArea() << endl
         << " Color = "  << c4.getColor()  << endl;


    return 0;
}
