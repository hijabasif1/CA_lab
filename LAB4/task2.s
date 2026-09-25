.text
.globl main
main:

li x10, 5 #num=5
jal x1, ntri #jump to ntri

addi x11, x10,0
li x10,1
ecall
j end

ntri:
addi sp, sp, -16 #make space in stack
#save ra and num on stack
sw x1,4(sp) 
sw x10,0(sp) 

li x5, 1 #x5=1 to check num<=1
ble x10, x5, b_case

addi x10,x10,-1 #num= num-1
jal x1, ntri #RECUR CALL

addi x11, x10,0 #saving result in x11
lw x10, 0(sp) #restoring num from stack
add x10, x10, x11 #num+ recurss result

lw x1, 4(sp) #restoring ra
addi sp, sp, 16
jalr x0, 0(x1)

b_case:
li x10,1 #return 1
lw x1, 4(sp) #restoring ra from stack
addi sp,sp,16
jalr x0, 0(x1)

end:





