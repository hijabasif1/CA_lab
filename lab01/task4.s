# task 4a
.text
.globl main
main:
    li x10, 0x78786464
    li x11, 0xA8A81919
    li x12,0x100
    sw x10,0(x12)
end:
    j end
