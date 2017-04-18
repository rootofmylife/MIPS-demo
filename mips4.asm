.data
	newLine: .asciiz "\n"
.text
	main:
		addi $s0, $zero, 10
		jal increseRegister
		
	li $v0, 10
	syscall
	
	increseRegister:
		addi $sp, $sp, -8
		sw $s0, 0($sp)
		sw $ra, 4($sp)
		
		addi $s0, $s0, 30
		
		li $v0, 1
		move $a0, $s0
		syscall
		
		lw $s0, 0($sp)
		lw $ra, 4($sp)
		addi $sp, $sp, 8
		
		jr $ra