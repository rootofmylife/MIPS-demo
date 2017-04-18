.data
	mess1: .asciiz "equal"
	mess2: .asciiz "not equal"
.text
	main:
		addi $t0, $zero, 5
		addi $t1, $zero, 20
		
		beq $t0, $t1, numE		
		
		bne $t0, $t1, numN
		
	li $v0, 10
	syscall
	
	numE:
		li $v0, 4
		la $a0, mess1
		syscall
	
	numN:
		li $v0, 4
		la $a0, mess2
		syscall
		