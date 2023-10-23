.data
	message:  .asciiz"Numbers are different"
	message1: .asciiz"Numbers are equal"
.text
   main:
	addi $t1,$zero,20
	addi $t2,$zero,5
	
	beq $t1,$t2,NumbersEqual
	bne $t1,$t2,NumbersDiff
		
	#End of program
	li $v0,10
	syscall
	
	NumbersEqual:
		     li $v0,4
		     la $a0,message1
		     syscall
	
	NumbersDiff: 
		     li $v0,4
		     la $a0,message
		     syscall
	