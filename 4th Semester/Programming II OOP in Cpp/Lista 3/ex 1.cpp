#include <iostream>

using namespace std;

class Shape
{
    public:
        Shape(int w = 0, int h = 0)
        {
            weidth = w;
            height = h;
        }
        void setWeidth(int w)
        {
            weidth = w;
        }
        void setHeight(int h)
        {
            height = h;
        }
    protected:
        int weidth;
        int height;

};

class Rectangle: public Shape
{
    public:
        Rectangle (int w = 0, int h = 0)
        {
            weidth = w;
            height = h;
        }
        int getArea()
        {
            return(weidth * height);
        }

};

int main ()
{
    Rectangle Rect;

    Rect.setWeidth(5);
    Rect.setHeight(7);

    cout << "total area: " << Rect.getArea() << endl;

    return 0;
}

