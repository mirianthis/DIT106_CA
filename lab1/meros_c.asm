.data
d1: .word 1234
d2: .word -1235

.text
la $s0,d1
lw $t0,0($s0)

#lw $s0,d2
lw $t1,4($s0)

add $t2, $t1, $t0