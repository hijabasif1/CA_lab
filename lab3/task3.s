.text
.globl main

main:
li x10, 0x100 #base address of v[]
li x11,0 # k=0
li x5, 10
sw x5, 0(x10)

li x5,20
sw x5, 4(x10)
jal x1, swap 
j exit
swap:
    slli x12, x11, 2 # k*4
    add x12, x10, x12 # base address+ 4*k = addr of v[k]
    addi x13, x11, 1 # for k+1
    slli x13, x13, 2 # (k+1)*4
    add x13, x10, x13 #v[k+1] address
    lw x5,0(x12) #temp = v[k]
    lw x6, 0(x13) #x6= v[k+1]
    sw x6, 0(x12) # v[k]= v[k+1]
    sw x5, 0(x13) # v[k+1]= temp
    jalr x0, 0(x1) 

exit:


