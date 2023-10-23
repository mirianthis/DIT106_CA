.data
	message:.asciiz "Hello everybode\nMy name is Mirianthis.\n"

.text
	main:
		jal displayMessage	#Call the function
	
	#The program ends here
	li $v0,10
	syscall
	
	
	#The function to display the message
	displayMessage:
			li $v0,4
			la $a0,message
			syscall
			
			jr $ra	#Go back to main to execute the program