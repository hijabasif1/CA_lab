.text
.globl main

main:
li x10, 0x100 #base addr of x
li x11, 0x300 #base addr of y
#string y= = hijab 
li x5, 'h'
sb x5, 0(x11)
li x5, 'i'
sb x5, 1(x11)
li x5,'j'
sb x5, 2(x11)
li x5,'a'
sb x5, 3(x11)
li x5,'b'
sb x5, 4(x11)
li x5,0
sb x5, 5(x11) #end of string have \0

jal x1, strcpy
j exit
strcpy:
    addi sp,sp,-16
    sw x19, 0(sp)#push i on stack
    li x19,0 #i=0
    loop:
    add x5, x11, x19 #addr of y[i]
    lb x7, 0(x5) # x7= y[i]
    add x6, x10, x19 #address of x[i]
    sb x7,0(x6) # x[i]=y[i]
    beq x7,x0, done #if x7==0 we have reached end of string
    addi x19, x19,1 #i+=1
    j loop
done:
lw x19, 0(sp)
addi sp,sp,16
jalr x0, 0(x1)

exit:




