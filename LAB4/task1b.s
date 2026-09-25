.text
main:

li x10,5 #n
jal x1, factorial #will jump to factorial
addi x11, x10,0 

li x10, 1
ecall #printing integer ans in x11
j end

factorial:
addi sp,sp, -16
sw x1, 4(sp) #saaving return address on stack
sw x10, 0(sp) #saving n on stack
li x11,1 # acc=1

loop:
ble x10,x0,done # n<=0 go to done
mul x11, x11, x10
addi x10, x10, -1 #n-1
jal x0,loop

done:
addi x10,x11,0 
lw x1, 4(sp) #restore ra
addi sp,sp,16 #pop stack
jalr x0, 0(x1)

end:










