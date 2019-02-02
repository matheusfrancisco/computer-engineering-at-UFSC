.data
   str1:.asciiz "Digite um numero :"
   str2:.asciiz "o resultado do p(x) 6x^4 – 4x^2 + 6x é:"
   
.text
.globl main

main:
   li $v0, 4
   la $a0, str1
   syscall
   li $v0, 5
   syscall
   
   mul $s0, $v0, 6
   mul $s0, $s0, $v0
   mul $s0, $s0, $v0
   mul $s0, $s0, $v0
   mul $s1, $v0 ,-4
   mul $s1, $s1, $v0
   mul $s2, $v0, 6
   add $s3, $s0, $s1
   add $s3, $s3, $s2
   
   li $v0, 4
   la $a0, str2
   syscall
   li $v0, 1
   addi $a0,$s3, 0

   syscall
   	
jr $ra
