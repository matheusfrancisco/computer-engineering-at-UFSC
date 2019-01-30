#include<iostream>
#include<string>

using namespace std;

class Circle
{

    private:
        double radius;
        string color;
    public:
        Circle(double r = 1.0, string c = "red")
        {
            radius = r;
            color = c;
        }

        string getColor()
        {
            return color;

        }

        double  getRadius()
        {
            return radius;
        }

        double getArea()
        {
            return radius*radius*3.14;
        }

        void setColor(string c)
        {
            color = c;
        }

        void setRadius(double r)
        {
            radius = r;
        }
};

int main()
{
    Circle c1;
    string my_color;
    double my_r;

    cout << "\n\n Circle 1 ( initial state) "<<endl;
    cout << "RADIUS= " << c1.getRadius() << c1.getArea()
         << " Color= " << c1.getColor() << endl;

    cout << "\n\n Circle 1: " << endl;
    cout << "Please enter you radius:";
    cin  >> my_r;
    c1.setRadius(my_r);

    cin.ignore();

    cout << "Please enter your color " << endl;
    getline(cin, my_color );
    c1.setColor( my_color );

    cout << "\n\n Circle1: "<<  endl;
    cout << "Radius= " << c1.getRadius() << "   Area= " << c1.getArea()
         << "   Color: " <<c1.getColor() << endl;

    return 0;
}
