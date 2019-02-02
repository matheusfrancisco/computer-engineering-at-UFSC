main:

	addi $s1, $s1, 4
	addi $s2, $s2, 3
	addi $s3, $s3, 2
	addi $s4, $s4, 1
	
	add $t0, $s1, $s2
	add $t1, $s3, $s4
	sub $s0, $t0, $t1
	