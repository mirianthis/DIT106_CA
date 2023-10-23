.data
	prompt:.asciiz"Give your age "
	message:.asciiz"Your age is "
.text
	#Print prompt
	li $v0,4
	la $a0,prompt
	syscall
	
	#Input number
	li $v0,5
	syscall
	
	move $t0,$v0
	
	#Print message
	li $v0,4
	la $a0,message
	syscall
	
	#Print number
	li $v0,1
	move $a0,$t0
	syscall