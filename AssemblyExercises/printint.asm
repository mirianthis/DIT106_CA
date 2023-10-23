.data
	age: .word 19 #This is a word
.text
	#Print my integer
	li $v0,1
	lw $a0,age
	syscall