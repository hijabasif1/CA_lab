.text

main:
    li x22, 9 #i
    li x23, 10 #j
    li x20, 4 #g
    li x21, 5 #h

    bne x22, x23, Else
    add x19, x20, x21
    beq x0,x0, Exit
Else: 
    sub x19, x20, x21
Exit:
    j Exit