#include<iostream>

using namespace std;

class Shape
{
    public:
        Shape(int w = 0, int h = 0)
        {
            setWidth(w);
            setHeight(h);
        }

        void setWidth(int w)
        {
            width = w;
        }

        void setHeight(int h)
        {
            height = h;
        }

        int getWidth()
        {
            return width;
        }

        int getHeight()
        {
            return height ;
        }

    private:
        int width;
        int height;

};

class Rectangle: public Shape
{
    public:
        Rectangle(int w = 0, int h = 0):Shape(w, h)
        {
            setWidth(w);
            setHeight(h);
        }

        int getArea()
        {
            return getWidth() * getHeight();
        }


};



int main()
{
    Rectangle Rect;
    cout << "________Initial state:________" << endl;
    cout << "Total area: "  << Rect.getArea() << endl;

    Rect.setHeight(5);
    Rect.setWidth(7);
    cout << "\n ________-After initialization:_______" << endl;
    cout << "total area: " << Rect.getArea() << endl;


    return 0;
}
