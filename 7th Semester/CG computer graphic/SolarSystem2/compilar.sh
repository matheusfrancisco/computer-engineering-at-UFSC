#!/bin/bash
echo 'Compilando e executando...'
gcc -c SolarSystem.c -o SolarSystem.o
gcc SolarSystem.o  -o programa -lglut -lGL -lGLU
./programa
