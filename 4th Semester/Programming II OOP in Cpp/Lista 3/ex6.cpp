#include<iostream>
 using namespace std;

 class Shape
{
public:
    Shape ( int w = 0, int h = 0)
    {
        cout << "Shaoe  constructor " << endl;
        setWidth (w);
        setHeight (h);
    }
    void setWidth (int w )
    {
        while(w < 0)
        {
            cout << "\n Width must be positive: \n";
            cout << "Enter a now value: ";
            cin  >> w;
        }
        width = w;
    }
    void setHeight(int h )
    {
        while(h < 0)
        {
            cout << "\n Width must be positive: \n";
            cout << "Enter a now value: ";
            cin  >> h;
        }
        height  = h;
    }
    int getWidth() const
    {
        return width;
    }
    int getHeight() const
    {
        return height;
    }
    int getArea() const
    {
        cout << "Parent  class (Shape): " << endl;
        return 0;
    }
    void PrintShape() const
    {
        cout << "\n___________Parent class  printShape__________" << endl;
        cout << "width = " << getWidth() << endl;
        cout << "height = " << getHeight() << endl;

    }
private:
    int width;
    int height;

};

class Rectangle: public Shape
{
public:
    Rectangle(int w = 0, int h = 0): Shape(w,h){}

    int getArea()
    {
        cout << "Rectangle class area :" << endl;
        return (getWidth() *getHeight());
    }
};

class Triangle : public Shape
{
    public:
        Triangle (int w = 0, int h = 0) : Shape(w,h){}

        int getArea()
        {
            cout << "Triangle class area: " << endl;
            return ((getWidth()*getHeight())/2);
        }
};

 int main ()
 {
     Shape *shape;
     int a;

     Rectangle rec(10,7);
     Triangle tri(10,5);

     cout << "\n\n 1).............................\n";
     cout << "\n Shape = &rec";
     cout << "an shape ->getArea() \n\n";

     shape = &rec;

     a = shape->getArea();
     cout << "\n Area = " << a << endl;


     cout << "\n\n 2)..............................\n";
     cout << "\n rec,getArea() \n";
     a = rec.getArea();
     cout << "\n area= "<< a << endl;

     cout << "\n\n 3) .............................\n";
     cout << "\n shape = &tri \n";
     shape = &tri;

     a = shape->getArea();
     cout << "\n Area " << a << endl;
     cout << "\n\n 4).................................\n";
     cout << "\n tri.getArea() \n\n";
     a = tri.getArea();
     cout << "\n Area = " << a << endl;


     return 0;
 }
