# Programa 5
#x=3;
#y=4;
#z=((15*x)+(67*y))*4;

li t0, 3
li t1, 4
li t3, 3
li t4, 67
li t6, 12

slli t2, t0, 4 #t2 = t0 << 4 é o mesmo de dizer: t2 = 3 * 2^4 = 3*16
sub t2, t2, t3  #t2 = t2 - 1 é o mesmo de dizer: t2 =  3*16 - 3 = 48 - 3 = 45 = x*15 =  3*15 = 45

slli t5, t1, 6  #t5 = t1 << 6 é o mesmo de dizer: t5 =  4 * 2^6 = 4*64 = 256
sub t5, t5, t6   #t5 = t5 - 12 é o mesmo de dizer: t5 =  256 - 12 = 244 = y*67 = 4*67 = 244

add t0, t5, t2   #t0 = t5 + t2 é o mesmo de dizer: t0 =  244 + 45 = 289 = 15*x + 67*y = 289
slli t6, t0, 2   #t6 = t0 << 2  é o mesmo de dizer: t6 =  289 * 2^2 =  289 * 4 = 1156

nop