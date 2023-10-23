.data

.text
	addi $s0,$zero,4
	# Multiply s0(4)*2^3 and save in t1
	sll $t1,$s0,3
	#Print the result
	li $v0,1
	move $a0,$t1
	syscall