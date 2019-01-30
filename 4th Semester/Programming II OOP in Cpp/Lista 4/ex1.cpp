#include<iostream>

using namespace std;

class Point
{
    public:
        Point(double x = 0, double y = 0);
        ~Point();

        void setX(double x);
        double getX(void);
        void setY(double y);
        double getY(void);
    private:
        double x;
        double y;

};

Point :: Point (double x, double y)
{
    cout << "object is being created" << endl;
    setX(x);
    setY(y);
    cout << "constructor point: " << getX() << " , " << getY() << " )" << endl;
}

Point::~Point(void)
{
    cout << "Object is being deleted" << endl;

}

void Point:: setX(double x)
{
    this -> x = x;
}

double Point::getX(void)
{
    return x;
}

void Point :: setY(double y)
{
    this -> y = y;
}

double Point :: getY(void)
{
    return y;
}




int main ()
{
    Point Point(5, 5);
    cout << "Point: (" << Point.getX() << " , " << Point.getY() << " ) " << endl;

    Point.setX(2.0);
    Point.setY(3.0);
    cout << "point: (" <<Point.getX() << " , " << Point.getY() << " ) " << endl;

    return 0;
}
