.text
.globl main

main:
li x10, 10 #g=10
li x11,11 # h=11
li x12, 12 #i=12
li x13, 13 #j=13

jal x1, leaf_exmp
#to print the output first copy the result then set one register to 1 then write  ecall
addi x11, x10, 0 #f is returned in a0 which is x10
li x10,1
ecall
j exit
leaf_exmp:
    addi x2, x2, -16 # x2= sp -16 because we are moving down to reserve space
    sw x18, 0(x2)
    sw x19, 4(x2)
    sw x20, 8(x2)

    add x18, x10, x11 # g+h= 10+11= 21
    add x19, x12, x13 # i+j= 12+13= 25
    sub x20, x18, x19 # f= 21-25= -4
    addi x10, x20, 0 # we have to copy result in x20 before restoring  
    lw x18, 0(x2)
    lw x19, 4(x2)
    lw x20, 8(x2)
    addi x2, x2, 16

    jalr x0, 0(x1) #used to return
exit:




