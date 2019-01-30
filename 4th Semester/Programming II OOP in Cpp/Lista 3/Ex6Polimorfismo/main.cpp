#include <iostream>

using namespace std;

class Shape
{
public:
    Shape(int w = 0, int h = 0)
    {
    cout<<"Shape constructor called" << endl;
    setWidth(w);
    setHeight(h);
    }
    void setWidth(int w)
    {
        while(w<0)
        {
            cout<<"\n Width must be positive! \n";
            cout<<"Enter a new valid value: ";
            cin>>w;
        }
        width = w;
    }
     void setHeight(int h)
    {
        while(h<0)
        {
            cout<<"\n Height must be positive! \n";
            cout<<"Enter a new valid value: ";
            cin>>h;
        }
        height = h;
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
        cout<<"\n Parent class (shape) area: "<<endl;
        return 0;
    }


    void printShape() const
    {
        cout<<"\n_________________Parent class printShape______________"<<endl;
        cout<<" width = "<<getWidth()<<endl;
        cout<<"height = "<<getHeight()<<endl;
    }

private:
    int width;
    int height;

};

class Rectangle: public Shape
{
public:



    Rectangle(int w = 0, int h = 0): Shape( w, h){}

    int getArea()
    {
        cout<<"Rectangle class area: "<<endl;
        return(getWidth() * getHeight());
    }

};

class Triangle: public Shape
{
    public:

    Triangle(int w = 0, int h = 0): Shape( w, h){}

    int getArea()
    {
        cout<<"Triangle class area: "<<endl;
        return( ( getWidth() * getHeight() ) /2 );
    }
};



int main(void)
{
    Shape *shape;
    int a;

    Rectangle rec(10,7);
    Triangle tri(10, 5);

    cout<<"\n\n 1 -------------------------- \n";
    cout<<"\n Shape = &rec";
    cout<<"\n shape->getArea()\n\n";
    ///stire the addres of rectangle
    shape = &rec;
    ///call rectangle area.
    ///shape->getArea();
    a=shape->getArea();
    cout<<"\n Area = "<<a<<endl;

    cout<<"\n\n 2 -------------------------- \n";
    cout<<"\n rec.getArea() \n\n";
    a=rec.getArea();
    cout<<"\n Area = "<<a<<endl;

    cout<<"\n\n 3 ---------------------------\n";
    cout<<"\n shape = &tri \n";
    ///store the addres of triangle
    shape = &tri;
    ///call triangle area
    a = shape->getArea();
    ///tri.getarea()
    cout<<"\n Area = "<<a<<endl;

    cout<<"\n\n 4 ---------------------------\n";
    cout<< tri.getArea();
    cout<<"\n Area = "<<a<<endl;

    return 0;
}
