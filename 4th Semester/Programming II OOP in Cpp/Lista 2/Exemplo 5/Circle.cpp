#include "header.h"
#include<iostream>
Circle::Circle(double r, string c)
{
    radius = r;
    color = c;
}

double Circle::getRadius() const
{
    return radius;
}

void Circle::setRadius(double r)
{

    while (r<0)
    {
        cout << "Raio invalido \n" ;
        cout << "Digite um raio maior que zero: ";
        cin >> r;
    }
     radius = r;
}

string Circle::getColor() const
{
    return color;
}

void Circle::setColor(string c)
{
    color = c;

};

double Circle::getArea() const
{
    return radius*radius*3.14;
}
