#!/bin/bash
echo 'Compilando e executando...'
gcc -c mat3.c -o mat3.o
gcc mat3.o  -o programa 
./programa
