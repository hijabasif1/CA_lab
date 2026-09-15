#Assume that the variables i and sum are in x22 and x23, while the array a located at address 0x200 is of 4-byte integers.
.text

main:
    #initializing i=0
    li x22, 0
    li x8, 10      #i=10
    li x9, 0x200  #address of arr[0]

    loop1:
    bge x22, x8, end
    sw x22, 0(x9) #a[i]=i
    addi x22, x22, 1 # i=i+1
    addi x9, x9,4 # go to next element since its an integer each elem takes 4 bytes so to go to next elem we do base address+4

    j loop1
end:


     #initializing i=0
    li x22, 0
    li x8, 10  #i=10
    li x9, 0x200  #address of arr[0]
    li x23, 0 #sum=0

    loop2:
    bge x22, x8, endloop
    lw x7, 0(x9) #loading 4 byte int from memory at addr x9 to x7
    add x23,x23,x7 #sum= sum+a[i]
    addi x22, x22, 1
    addi x9,x9,4

    j loop2
endloop:


    






