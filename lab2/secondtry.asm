
	.data str: .byte 'a','b','e','f','g'
.text
.globl main
main:
load: la $t0,mem
lb $t1,0x0($t0)
lb $t2,0x1($t0)
lb $t3,0x2($t0)
lbu $t4,0x2($t0)
lb $t5,0x3($t0)
lbu $t6,0x3($t0)
lh $t7,0x2($t0)
lw $t8,0x0($t0)
store: la $t0, str
li $t1,'H'
sb $t1,0x0($t0)
li $t1,'e'
sb $t1,0x1($t0)
li $t1,'l'
sb $t1,0x2($t0)
li $t1,'l'
sb $t1,0x3($t0)
li $t1,'o'
sb $t1,0x4($t0)
li $t1,0
sb $t1,0x5($t0)
li $t1,'b'
sb $t1,0x6($t0)
li $t1,'o'
sb $t1,0x7($t0)
li $t1,'o'
sb $t1,0x8($t0)
li $v0,4
la $a0,str
syscall
print: li $v0,4
la $a0,str
syscall
exit: li $v0,10
syscall

	
	
