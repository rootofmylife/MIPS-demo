.data
	myMes: .asciiz "Hello"
	age: .word 3
	fl: .float 9.4
	do: .double 2.999
.text
	li $v0, 4
	la $a0, myMes
	syscall
	
	li $v0, 1
	lw $a0, age
	syscall
	
	li $v0, 2
	lwc1 $f12, fl
	syscall
	
	li $v0, 3
	ldc1 $f2, do
	syscall