#!/bin/bash
echo 'Compilando e executando...'
gcc -c mlp_braille.c -o mlp_braille.o
gcc mlp_braille.o -o programa -lm
./programa
