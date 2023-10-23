.text
li $t0, 1753
li $t1, 2000

sub $s0, $t1, $t0
sub $s1, $t0, $t1

li $t2, 247

not $s2, $t2

addi $t3, $s2, 1
