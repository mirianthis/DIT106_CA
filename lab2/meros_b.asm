.data
str1: .asciiz "Dwse ton prwto arithmo: "
str2: .asciiz "Dwse to deutero arithmo: "
str3: .asciiz "O megalyteros arithmos einai:"
nl: .asciiz "\n"
.text
.globl main
main:
li $v0,4 # print string
la $a0,str1
syscall
li $v0,5 # read int
syscall
move $s0,$v0
li $v0,4 # print string
la $a0,str2
syscall
li $v0,5 # read int
syscall
move $s1,$v0
li $v0,4 # print string
la $a0,str3
syscall
# Insert your Code Here
jal my_max
# Insert your Code Here
li $v0,1 # print int
syscall
li $v0,4 # print string
la $a0,nl
syscall
li $v0,10 # exit
syscall
my_max:
# Insert your Code Here
jr $ra