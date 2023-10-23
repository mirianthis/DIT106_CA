.data

.text
	addi $t1,$zero,30
	addi $t2,$zero,8
	
	div $t1,$t2
	mflo $s1 #to apotelesma tis diairesis
	mfhi $s2 #to ipolipo tis diairesis
	
	li $v0,1
	move $a0,$s2
	syscall