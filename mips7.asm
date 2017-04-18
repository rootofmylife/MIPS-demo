.data
	mess: .asciiz "result"
	spa: .asciiz ", "
.text
	main:
		addi $t0, $zero, 0
	
	while:
		bgt $t0, 10, exit
		jal printNum
		addi $t0, $t0, 1
		
		j while
		
	exit:
		li $v0, 4
		la $a0, mess
		syscall
	
	li $v0, 10
	syscall
	
	printNum:
		li $v0, 1
		add $a0, $t0, $zero
		syscall
		
		li $v0, 4
		la $a0, spa
		syscall
		
		jr $ra