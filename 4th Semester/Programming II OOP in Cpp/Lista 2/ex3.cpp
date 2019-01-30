#include<iostream>
#include<string>

using namespace std;

class circle
{
private:
    double radius;
    string color;
public:
    circle(double r = 1.0, string c = "red")
    {
        radius = r;
        color = c;
    }
    double getRadius()
 {
     return radius;
 }

 string getColor()
 {
     return color;
 }

 double getArea()
 {
     return radius*radius*3.1416;
 }

};


int main()
{
    circle c1(1.2, "blue");
    cout << "\n\n Circle 1:" << endl;
    cout << "Radius= "<<c1.getRadius() << "  Area= " <<c1.getArea()
         << " Color= " <<c1.getColor() << endl;

    circle c2(3.4);
    cout << "\n\n Circle 2: "<<endl;
    cout << "Radius= " << c2.getRadius() <<" Area= " << c2.getArea()
         << " color = " << c2.getColor() << endl;

     circle c3(3.4);
    cout << "\n\n Circle 2: "<<endl;
    cout << "Radius= " << c3.getRadius() <<" Area= " << c2.getArea()
         << " color = " << c3.getColor() << endl;


    return 0;
}

