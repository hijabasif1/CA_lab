.text
.globl main

main:
addi x10, x0, 12 #a
addi x11, x0, 12 #b
jal x1, sum
addi x11, x10,0 #x11=24
li x10, 1   #x10=1
ecall  #used to print
j exit
sum:
add x10,x11, x10 #a+b=24
jalr x0, 0(x1)
exit: