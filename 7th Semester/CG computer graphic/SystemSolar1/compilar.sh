#!/bin/bash
echo 'Compilando e executando...'
gcc -c sistema.c -o sistema.o
gcc sistema.o  -o programa -lglut -lGL -lGLU
./programa
