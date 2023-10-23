.data
	message: .asciiz"Its true"
	message1:.asciiz"Its false"
	num1:.float 10.4
	num2:.float 10.4

.text
	main:
		lwc1 $f0,num1
		lwc1 $f2,num2
		
		c.eq.s $f0,$f2
		bc1t exit
		
		li $v0,4
		la $a0,message1
		syscall
		
		
	#Emd of program	
	li $v0,10
	syscall
		
		exit:
			li $v0,4
			la $a0,message
			syscall