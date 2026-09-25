.text
.globl main
main:
    li x11, 5        # len = 5
    li x10, 0x100    # Base address of a 
    # a = [8,3,6,2,10]
    li x12, 8
    sw x12, 0(x10)
    li x12, 3
    sw x12, 4(x10)
    li x12, 6
    sw x12, 8(x10) 
    li x12, 2
    sw x12, 12(x10) 
    li x12, 10
    sw x12, 16(x10)   

    li x13, -1
    beq x10, x13,done  #a == NULL go to done
    beq x11, x0,done  #len == 0 go to done
bubblesort:
    li x14, 0  # i = 0  
outerloop:
    bge x14, x11, done # if i >= len  go to done
    addi x15,x14, 0 # j = i
innerloop:
    bge x15, x11, next_i  # if j >= len go to next
    # addr of a[j]
    slli x16, x15, 2   # offset = j * 4
    add x16, x16, x10   # x16= address of a[j]
    #addr of a[i]
    slli x17, x14, 2    # offset = i * 4
    add x17, x17, x10     # x17=address of a[i]
    
    lw x18, 0(x16)      # x18 = a[j] = temp1
    lw x19, 0(x17)     # x19 = a[i] = temp2
    bge x19, x18, no_swap    # if a[i] >= a[j] go to no_swap
    sw x18, 0(x17)    # a[i] = temp1
    sw x19, 0(x16)    # a[j] = temp2
no_swap:
    addi x15, x15, 1   # j=j+1
    j innerloop             
next_i:
    addi x14, x14, 1    # i=i+1
    j outerloop             

done: j done


