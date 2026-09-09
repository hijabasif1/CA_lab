
.text

main:
    li x25, 0x100 #base address of save
    li x24, 10 # store k=8
    li x22, 0 #i=0
    #for array store value in temp reg
    li x4, 10
    li x5, 10
    li x6,10
    li x7,20
    li x8,30
    #putting elem to array:
    sw x4,0(x25)
    sw x5, 4(x25)
    sw x6, 8(x25)
    sw x7, 12(x25)
    sw x8, 16(x25)

loop:

    slli x10, x22,2 #shift left by 2
    add x10,x10,x25
    lw x9, 0(x10)
    bne x9,x24, Exit
    addi x22, x22,1
    beq x0,x0,loop
Exit:
    j Exit

