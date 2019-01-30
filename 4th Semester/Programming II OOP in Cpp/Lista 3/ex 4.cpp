#include<iostream>

using namespace std;

class Shape
{
public:
    Shape(int w = 0,int h = 0)
    {
        setWidth(w);
        setHeight(h);
    }

    void setWidth(int w)
    {
        width = w;
    }
    int getWidth()
    {
        return width;
    }

    void setHeight(int h)
    {
        height = h;
    }
    int getHeight()
    {
        return height;
    }

    friend void printShape(Shape shape);
    friend void printall(Shape shape);

private:
    int width;
    int height;

};
class Paintcost
{
    public:
        int getCost(int area)
        {
            return area * 10;
        }

};



class Rectangle: public Shape, public Paintcost
{
public:
    Rectangle(int w = 0, int h = 0)
    {
        setWidth(w);
        setHeight(h);
    }
    friend void printRectangle(Rectangle rectangle);
    friend void printall(Shape shape );

    int getArea()
    {
        return (getWidth() * getHeight());
    }

};


void printShape(Shape shape)
{
    cout << "\n_________Shape:_______" << endl;
    cout << " width = " << shape.getWidth() << endl;
    cout << "height = " << shape.getHeight() << endl;
}

void printRectangle(Rectangle rectangle)
{
    cout << "\n__________Rectangle____" << endl;
    cout << "width = " << rectangle.getWidth() << endl;
    cout << "height = " << rectangle.getHeight() << endl;
}

void printall(Shape  shape)
{
    cout << "\n_________Shape:_______" << endl;
    cout << " width = " << shape.getWidth() << endl;
    cout << "height = " << shape.getHeight() << endl;

}
int main (void)
{
    Rectangle Rect;
    int area;

    Rect.setWidth(5);
    Rect.setHeight(5);

    area = Rect.getArea();

    cout << "total area: " << Rect.getArea() << endl;


    cout << "Total paint cost : " << Rect.getCost(area) << endl;
    cout << "Total paint cost:  " << Rect.getCost(Rect.getArea()) << endl;



    return 0;
}
