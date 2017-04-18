.data
	num1: .word 6
	num2: .word 3
.text
	#Add
	lw $t0, num1($zero)
	lw $t1, num2($zero)
	add $t2, $t1, $t0
	
	li $v0, 1
	add $a0, $zero, $t2
	syscall
	#Sub
	lw $s0, num1
	lw $s1, num2
	sub $t0, $s0, $s1
	
	li $v0, 1
	move $a0, $t0
	syscall
	
	#mul
	addi $s0, $zero, 10
	addi $s1, $zero, 4
	mul $t0, $s0, $s1
	
	li $v0, 1
	add $a0, $zero, $t0
	syscall
	
	#mult 
	addi $s0, $zero, 5000
	addi $s1, $zero, 10
	mult $s0, $s1
	mflo $t0
	
	li $v0, 1
	add $a0, $zero, $t0
	syscall
	
	#div
	addi $s0, $zero, 30
	addi $s1, $zero, 5
	
	#div $s2, $s0, $s1
	
	div $s0, $s1
	
	mflo $t0 #quotient
	mfhi $t1 #remainder
	
	li $v0, 1
	add $a0, $zero, $t1
	syscall