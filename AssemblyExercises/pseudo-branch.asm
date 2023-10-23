.data
	message:  .asciiz"Hi how are you?"		
.text
   main:
   	addi $t0,$zero,10
   	addi $t1,$zero,14
   	
   	blt $t0,$t1,printMessage
	
	#End of program
	li $v0,10
	syscall
	
	printMessage:
			li $v0,4
			la $a0,message
			syscall