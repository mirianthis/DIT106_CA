.data
array: .word 1,1,1,1,1,1,1
sum: .word -128

.text
	.globl main

main:
	la $t0,array
	move $s0,$t0

LOOP:	lw $t1, 0($s0)
	addi $s0,$s0,4
	add $t2, $t2, $t1
	
	addi $t3, $t3, 1
	ble $t3, 4, LOOP
	
	la $t4,sum
	sw $t2, 0($t4)
	
print_int:	li $v0,1
	   	lw $a0, 0($t4)
	   	syscall
	   	
exit:	li $v0, 10
     	syscall