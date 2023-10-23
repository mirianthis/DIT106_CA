.data
	message:.asciiz"Loop is done"
.text
	main:
		addi $t0,$zero,0
	
	while:
		bgt $t0,10,exit
		li $v0,1
		move $a0,$t0
		syscall
		addi $t0,$t0,1	
		
	
		j while
	exit:
		li $v0,4
		la $a0,message
		syscall
		
		#End of process
		li $v0,10
		syscall
