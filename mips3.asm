.data
	mess: .asciiz "Hello Me\n"
.text
	main:
		jal displayMess
		addi $a1, $zero, 15
		addi $a2, $zero, 5
		jal addNum
		
		li $v0, 1
		addi $a0, $v1, 0
		syscall
		
	#Stop programm
	li $v0, 10
	syscall
	
	displayMess:
		li $v0, 4
		la $a0, mess
		syscall
		
		jr $ra
	addNum:
		add $v1, $a1, $a2
		jr $ra