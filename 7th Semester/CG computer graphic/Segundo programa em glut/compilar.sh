#!/bin/bash
echo 'Compilando e executando...'
gcc -c ex2.c -o ex2.o
gcc ex2.o  -o programa -lglut -lGL -lGLU
./programa
