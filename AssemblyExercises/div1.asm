.data

.text
	addi $s0,$zero,25
	addi $s1,$zero,5
	
	div $t0,$s0,$s1
	
	li $v0,1
	move $a0,$t0
	syscall