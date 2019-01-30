#include<iostream>

using namespace std;

class Box
{
public:
    Box (double l = 0.0, double w = 0.0, double h = 0.0)
    {
        cout << "Constructor  called." << endl;
        setHeight(h);
        setWidth (w);
        setLenght(l);
    }
    void setHeight(double h )
    {
        height  = h;
    }
    void setWidth(double w)
    {
        width = w;
    }
    void setLenght(double l)
    {
        lenght = l;
    }
    double getVolume()
    {
        return lenght * width * height;
    }
    int compare(Box box)
    {
        if (this-> getVolume() > box.getVolume())
            return 1;
        else
            return 0;

    }
    friend void printBox (Box  box);
private:
    double height;
    double width;
    double lenght;
};
void printBox (Box box)
{
    cout << "\n Box: "   << box.height << endl;
    cout << "height = "  << box.height << endl;
    cout << "lenght = "  << box.lenght << endl;

}



int main ()
{
    Box Box1 (2, 2 ,2);
    Box Box2 (3, 3, 3);

    cout << "\n_________ Box 1 _______________ ";
    printBox(Box1);
    cout << "\n Box 1 volume = " << Box1.getVolume() << endl;

    cout << "\n_________ Box 2 _______________ ";
    printBox(Box2);
    cout << "\n Box 2 volume = " << Box2.getVolume() << endl;

    if (Box1.compare(Box2))
    {
        cout << "Box 2 is smaller than Box 1 " << endl;
    }
    else
    {
        cout << "Box 2 is larger than Box 1" << endl;
    }


    return 0;
}
