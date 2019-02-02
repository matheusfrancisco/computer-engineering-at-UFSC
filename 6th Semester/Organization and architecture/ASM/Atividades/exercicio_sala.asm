##############################################################
##  Autor: Juliano de Souza Gomes			    ##
##  Data:  12/05/2017					    ##
##  Este código pode ser utilizado desde que citado a fonte ##
##############################################################

		.data   # segmento de dados
		
Arrayspace: 	.space 64

Array_A: 	.word 10, 20, 30, 40   #0 4 8 12
Arrayspace2: 	.space 48
Array_B: 	.word 10, 10, 0, 0

     		.text   # segmento de código (programa)

main:     
	la  $s4, Array_A
	la  $s1, Array_B
	lw  $t0, 4($s4)           #carrega t0 20
	lw  $t1, 8($s4)		  #carrega t1 30
	add $t2, $t0, $t1         #20+30 = 50
	lw  $t0, 12($s4)          #carrega 30
	add $t2, $t0, $t2 	  #50+30 = 90
	sw  $t2, 0($s1)
	lw  $t0, 8($s4)           #carrega t0 30
	lw  $t1, 12($s4) 	  #carrega t1 40
	add $t2, $t0, $t1         #30+40 = 70
	sw  $t2, 4($s1)           
	lw  $t0, 12($s4)          #carrega t0 40
	sw  $t0, 8($s1)