.text
main:
    # x, a, b & c are signed integers and stored in x20, x21, x22, x23 respectively.
    li x22, 5 # b=5
    li x23, 3 #c=3
    li x20, 2 #x=2 we have assigned value to x to test

    #to check if x==1 if yes jump to case 1
    li x5,1
    beq x20, x5, case1

    #to check if x==2 if yes jump to case 2
    li x5, 2
    beq x20, x5, case2
    #to check if x==3 if yes jump to case 3
    li x5, 3
    beq x20, x5, case3
    #to check if x==4 if yes jump to case 4
    li x5, 4
    beq x20, x5, case4

    j default
    case1:
    # a=b+c
    add x21, x22,x23
    j exit

    case2:
    #a= b-c
    sub x21, x22,x23
    j exit

    case3:
    #a= b*2
    slli x21, x22 , 1
    j exit

    case4:
    # a= b/2
    srai x21, x22 , 1
    j exit

    default:
    #a=0
    li x21,0

    exit:
