.data
	num1: .word 20
	num2: .word 8
.text
	lw $s0,num1
	lw $s1,num2
	sub $t1,$s0,$s1
	
	li $v0,1
	move $a0,$t1
	syscall
