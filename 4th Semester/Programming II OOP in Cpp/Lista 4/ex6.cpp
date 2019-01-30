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
        void printPoint(void);

        Point operator++();
        Point operator++(int);

        Point operator+(const Point& p);

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

void Point :: printPoint()
{
    cout << " ( " << getX() << " , " << getY() << " ) " << endl;
}

Point Point::operator++( )
{
    x++;
    y++;

    return Point(x, y);
}

Point Point::operator++(int )
{
    x++;
    y++;
    return Point(x,y);
}

Point Point::operator+(const Point& p)
{
    Point point;
    point.x = this-> x + p.x;
    point.y = this-> y + p.y;

    return point;
}

int main ()
{
    cout << " \n\n_________DATA declaration ________"<< endl;
    Point point1(1,1);
    Point point2(10,10);
    Point point3;

    cout << "\n\n__________Data input______________" << endl;
    point1.printPoint();
    point2.printPoint();

    cout << "\n\n____________Point ++________________" << endl;
    point1++;

    cout << "\n\n____________++Point_________________" << endl;
    ++point2;

    cout << "\n\n_____________Data output after ++________" << endl;
    point1.printPoint();
    point2.printPoint();

    cout << "\n\n___________point3 = point1 + point3_______" << endl;
    point3 = point1 + point2;
    point3.printPoint();

    return 0;
}
