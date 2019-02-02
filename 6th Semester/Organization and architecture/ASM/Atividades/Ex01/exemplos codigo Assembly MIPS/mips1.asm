#main:
#	 addi 	$t1,$t1,0x10010000     #t1 = endereços
#	 				#t2 = dados
#
#loop:
#	addi	$t2,$t2,8 
#	sw	$t2, 0($t1)
#	addi	$t1, $t1, 0x00000004
#	jal	loop

#main:
#	addi	$t1,$t1,0x10010000
#loop2:
#	ld	$t2, 0($t1)
#	addi	$t1, $t1, 0x00000004
#	jal	loop2 


#main:
#	addi	$t1,$t1,0x10010000
#	addi	$s0,$s0, 7
#loop3:
#	addi	$t2,$t2,8 
#	sw	$t2, 0($t1)
#	addi	$t1, $t1, 0x00000004
#	subi	$s0, $s0,1
#	beqz	$s0, main
#	jal	loop3

 
#main:
#	addi	$t1,$t1,0x10010000
#	addi	$s0,$s0, 7
#loop3:
#	addi	$t2,$t2,8 
#	sw	$t2, 0($t1)
#	addi	$t1, $t1, 0x00000004
#	subi	$s0, $s0,1
#	beqz	$s0, main
#	jal	loop2 

#main:
#	addi	$s0,$s0,0x10010000 			#s0 = endereco coeficientes
#	addi	$s1,$s1,0x10010020			#s1 = endereco amostras
#	addi	$s2,$s2,0x10010040			#s2 = dados
#	addi	$s3,$s3,0x10010060			#s3 = buffer
#       mul	$s1, $t5, $t6
#loop3:



main:
	


         	         









