# Programa 7
#x = o maior inteiro possível; // Ou seja, uma palavra de 32 bits com todos os bits igual a 1
#y = 8192;
#z = x - 4y;

li t0, 0xFFFFFFFF
li, t1, 1

slli t1, t1, 13 #t1 = t1 << 13 = 1*2^13  = 8192
slli t1, t1, 2  #t1 = t1 << 2 = 8192*2^2 = 32768

sub t0, t0, t1  #t0 = t0 - t1 = 4294967295 - 32768 = 4294966967

nop