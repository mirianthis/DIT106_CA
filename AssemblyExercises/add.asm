.data
	num1: .word 5
	num2: .word 10
	num3: .word 0
.text
	lw $t0,num1
	lw $t1,num2
	lw $t5,num3
	add $t2,$t0,$t1
	
	li $v0,1
	add $a0,$t5,$t2
	syscall