#   int a[4] = {3, 8, 20, 15]
#   int i, n = 4, x=0;
#   for(i = 0; i<n; i++){
#       if(i%2==0)
#           a[i] = a[i] + 3;
#       x = a[i] < 12 ? 0 : 1;
#   }
#   x = 0;  
# bnez s1, desvio => bne s1, zero, desvio
# slt => set less than (coloca 1 se for menor, e 0 se for maior ou igual

.text
.globl _start
_start:
li s3, 4 #n=4
li s4, 0 #x=0
li s2, 0 #i=0
la s1, a #salva o valor da base de a
for1: 
    bge s2, s3, fimFor1#s2>=s3

    slli t0,s2, 2 #i=i*4

    add t0, s1, t0 #base de a + (i*4)#--|
                                     #  |- a[i]
    lw t1, 0(t0) #t1 = mem a[i]      #--|
    
    li t0, 2
    rem t0, s2, t0#resto da divisão: t0 = i % 2 
    
    bne t0, zero, fimDoIf


    addi t1, t1, 3 #a[i] + 3
    sw t1, 0(t0) #a[i] = t 

    fimDoIf:
        slti s4, t1, 12 # x = a[i] < 12 ? 0 : 1

    addi s2, s2, 1#i++
    j for1#volta no for com o i incrementado
fimFor1: 
li s4, 0

.data 
    a: .word 3,8,20,15

