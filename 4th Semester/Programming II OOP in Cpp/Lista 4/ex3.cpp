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

int main ()
{
    cout << " \n\n_________DATA declaration ________"<< endl;
    double x,y;
    Point* myPointArray = new Point [3];

    cout << "\n\n__________Data input______________" << endl;
    for(int i = 0; i < 3; i++)
    {
        cout << "\n Point " << i << endl;
        cout << "x: ";
        cin >> x;
        cout << "y: ";
        cin >> y;

        myPointArray[i].setX(x);
        myPointArray[i].setY(y);
    }
    cout << "\n\n_______________________Data output________________" << endl;
    for(int i = 0; i < 3; i++)
    {
        cout <<"\n Point "<< i;
        myPointArray[i].printPoint();
    }

    cout << "\n\n_______________________Memory liberation__________" << endl;
    delete[] myPointArray;

    return 0;
}
