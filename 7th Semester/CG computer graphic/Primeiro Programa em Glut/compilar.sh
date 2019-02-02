#!/bin/bash
echo 'Compilando e executando...'
gcc -c ex1.c -o ex1.o
gcc ex1.o  -o programa -lglut -lGL -lGLU
./programa
