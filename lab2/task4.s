.text

main:
    li x7, 0 #i
    
    li x5, 5 #a
    li x6, 6 #b
    li x10, 0x100

    loop1:
    
    bge x7, x5 , end   # if i>=a go to exit
    li x29,0 #j=0 j will reset after every iteration since when i=0 j goes from 0-6

    loop2:
    bge x29, x6, next

    add x8, x7, x29 # x8= i+j

    slli x12, x29,4 # x12= 16j
    add x12, x10, x12 # stores address of D[4j]
    sw x8, 0(x12) #D[4j]= i+j and i+j is stored in x8

    addi x29, x29, 1 #increament j
    j loop2
    next:
    addi x7,x7,1
    j loop1
    
end:

    





