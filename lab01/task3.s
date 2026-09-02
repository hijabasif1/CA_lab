.text
.globl main
main:
    li x5, 5 # a=5
    li x8 ,5
    add x6, x0, x0 # b=0+0
    addi x5, x6, 32 # a=b+32
    add x7, x5, x6 # (a + b)
    sub x9, x7, x8 # d stored in x9
    sub x10, x5, x9 # for a-d
    sub x11, x6, x5 # for b-a
    add x12, x10, x11 # for (((a - d) + (b - a))
    add x13, x12, x9 # e=x13
    add x13, x5, x6
    add x13, x9, x13
    end:
        j end






