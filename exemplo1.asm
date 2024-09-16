#int a[4] = {10, 20, 35, 2};
#a[2] = a[2] + 3;
#


.text
.globl _start
_start:

la t1, a #base de a[]
lw t0, 8(t1)
addi t0, t0, 3
sw t0, 8(t1)
nop

.data 
    a: .word 10,20,35,2