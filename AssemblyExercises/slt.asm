.data
	message:  .asciiz"The number is less than the other"		
.text
   main:
   	addi $t0,$zero,1
   	addi $t1,$zero,100
   	
   	slt $s0,$t0,$t1
   	bne $s0,$zero,printMessage
	
	#End of program
	li $v0,10
	syscall
	
	printMessage:
			li $v0,4
			la $a0,message
			syscall
	
	