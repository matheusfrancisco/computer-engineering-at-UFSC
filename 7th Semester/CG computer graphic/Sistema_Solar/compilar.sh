#!/bin/bash
echo 'Compilando e executando...'
gcc -c sistemasolar.c -o sistemasolar.o
gcc sistemasolar.o  -o programa -lglut -lGL -lGLU
./programa
