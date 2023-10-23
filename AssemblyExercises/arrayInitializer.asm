.data
	myArray:.word 100:5
	newline:.asciiz "\n"
.text
    main:	
	#Clear $t0 to 0
	addi $t0,$zero,0
	
	while:
		beq $t0,20,exit
		lw $t6,myArray($t0)
		
		addi $t0,$t0,4
		
		li $v0,1
		move $a0,$t6
		syscall
		
		li $v0,4
		la $a0,newline
		syscall
		
		j while 
	
	
	exit:
		li $v0,10
		syscall
