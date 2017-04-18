.data
	propt: .asciiz "Enter age: "
	mess: .asciiz "\nYour name is: "
	userInput: .space 20
.text
	li $v0, 4
	la $a0, propt
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	li $v0, 4
	la $a0, mess
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	printFloat:
		lwc1 $f4, 0.0
		
		li $v0, 4
		la $a0, propt
		syscall
		
		li $v0, 6
		syscall
		
		li $v0, 2
		add.s $f12, $f0, $f4
		syscall
		
		jr $ra
	InputName:
		li $v0, 8
		la $a0, userInput
		li $a1, 20
		syscall
		
		li $v0, 4
		la $a0, propt
		syscall
		
		li $v0, 4
		la $a0, userInput
		syscall
		
		jr $ra