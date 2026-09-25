.text
.globl main

main:
    li x11, 5   # len = 5
    li x10, 0x100  # Base address of a
    # Building arr= [8,4,7,2,6] :
    li x5, 8
    sw x5, 0(x10)

    li x5, 4
    sw x5, 4(x10)

    li x5, 7
    sw x5, 8(x10)

    li x5, 2
    sw x5, 12(x10)

    li x5, 6
    sw x5, 16(x10)         
    jal x1, find_minm  # call find_min

    addi x11, x10, 0   # move result to x11
    li x10, 1     # print integer
    ecall
    j end

find_minm:
    lw x5, 0(x10)   # x5 = a[0] = current min
    li x6, 1     # i = 1

loop:
    bge x6, x11, return   # if i >= len, go to return
    slli x7, x6, 2      # offset = i * 4
    add x7, x7, x10   # x7 = address of a[i]
    lw x8, 0(x7)   # x8 = a[i]
    ble x5, x8, dont_update  # if minimum <= a[i] don't update
    addi x5, x8, 0         # minimum = a[i]

dont_update:
    addi x6, x6, 1 # i++
    j loop                 

return:
    addi x10, x5, 0  # return minimum in x10
    jalr x0, 0(x1)   

end:
    j end