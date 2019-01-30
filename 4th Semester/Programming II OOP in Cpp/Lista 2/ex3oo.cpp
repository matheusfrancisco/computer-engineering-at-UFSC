#include <iostream>
#include <string>

using namespace std;

class circle{
private:
    double radius;          ///data member(variable)
    string color;           ///data member(variable)

public:
        ///constructor with default values for data members
        ///constructor option 1
        circle(double r = 1.0, string c = "red"){
            radius = r;
            color = c;
        }
        ///constructor option 2
        ///circle (double r = 1.0, string c = "red") : radius (r), color (c){}

        double getradius(){ ///member function (getter)
            return radius;
        }

        string getcolor(){ ///member function (getter)
            return color;
        }

        double getarea(){   ///member function
            return radius*radius*3.1416;
        }
}; ///need to end the class declaration with a semi-colon

int main()
{
    circle c1(1.2, "blue");
    cout << "\n\nCircle 1:" << endl;
    cout << "Radius= " << c1.getradius() << " Area= " << c1.getarea() << " Color= " << c1.getcolor() << endl;

    circle c2(3.4);
    cout << "\n\nCircle 2:" << endl;
    cout << "Radius= " << c2.getradius() << " Area= " << c2.getarea() << " Color= " << c2.getcolor() << endl;

    circle c3;
    cout << "\n\nCircle 3:" << endl;
    cout << "Radius= " << c1.getradius() << " Area= " << c1.getarea() << " Color= " << c1.getcolor() << endl;

    /// cout << c3.radius; /// Erro RADIUS is private

    return 0;
}
