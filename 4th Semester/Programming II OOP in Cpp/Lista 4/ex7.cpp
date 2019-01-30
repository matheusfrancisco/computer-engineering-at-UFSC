#include<iostream>

using namespace std;


class Point
{
    public:
        static int objectCount;

        Point(double x = 0, double y = 0);
        ~Point();

        void setX(double x);
        double getX(void);
        void setY(double y);
        double getY(void);
        void printPoint(void);

        static int getCount()
        {
            return objectCount;
        }
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
    objectCount++;
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

int Point::objectCount = 0;

int main ()
{
   cout << "\n Stage Count(Inicial): " << Point::getCount() << endl;

   cout << "\n\n ______________Data declaration__________"<< endl;

   Point point1(1,1);
   cout << "\n Stage Count: " << Point::getCount() << endl;

   Point point2(10,10);

   cout << "\n Stage Count(Final): " << Point::getCount() << endl;

    return 0;
}

