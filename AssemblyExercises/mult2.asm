.data

.text	
	#Save 20000 to t1 and 10 to t2
	addi $t1,$zero,20000
	addi $t2,$zero,10
	
	#Multiply 20000 and 10
	mult $t1,$t2
	
	#Move from lo
	mflo $s0
	
	#Print the number
	li $v0,1
	move $a0,$s0
	syscall