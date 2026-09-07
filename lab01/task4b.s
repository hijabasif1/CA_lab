# task 4b
.text
.globl main
main:

    li x5, 0x100 # ch array a
    li x6, 0x200 #  short array b
    li x7, 0x300 # unsigned int array c


    li x8,0 #initializing i=0
    li x9, 4 #initializing i=4


    for:
    bge x8, x9, end #if i>=4 skip
    
    add x10, x5,x8 #no shift needed for a (gives a[i])
    lb x20,0(x10) #x20 stores value of a[i]
    
    slli x11, x8 , 1 # offset of b is i*2 
    add x12, x6, x11 #address of b[i]
    lh x12, 0(x12) # x12 stores value of b[i]

    slli x13, x8, 2 #offset of c is 4
    add x15, x7, x13 #address of c[i]
    

    add x16, x12, x20 # a[i]+b[i] 
    sw x16, 0(x15) # storing it in the memory from register 

    addi x8,x8,1 #so that we show i is incrementing
    j for #jumps to for and checks the condition again



end:
    j end