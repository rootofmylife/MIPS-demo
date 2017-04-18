.data
	myArr: .space 12
.text
	main:
	addi $s0, $zero, 4
	addi $s1, $zero, 10
	addi $s2, $zero, 12
	
	addi $t0, $zero, 0
	
	sw $s0, myArr($t0)
	add $t0, $t0, 4
	sw $s1, myArr($t0)
	add $t0, $t0, 4
	sw $s2, myArr($t0)
	
	#lw $t6, myArr($zero)
	
	#li $v0, 1
	#addi $a0, $t6, 0
	#syscall
	
	#print arr using while
	
	addi $t0, $zero, 0
	
	while:
		beq $t0, 12, exit
		
		lw $t6, myArr($t0)
		add $t0, $t0, 4
		
		li $v0, 1
		move $a0, $t6
		syscall
		

		
		j while
	exit:
