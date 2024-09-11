#slli s1, s2, 2 #a = b << 2 = 2^2
#srli s1, s2, 5 #a = b >> 5 = 2^-5
#srai s1, s2, 5 #a = b >> 5 = 2^-5
#mul s1, s2, s3 #a = b * c
#div{u} s1, s2, s3 #s1 = s2 / s3
#rem{u} s1, s2, s3 #s1 = s2 % s3
#{u} é para operações com números sem sinal

# Programa 4
# x=1;
# y=5*x+15;

li t0, 1 #x=1
slli t1, t0, 2 #t1 << 2 é o mesmo de dizer: t1 * 2² = 1 * 2² = 4
add t1, t1, t0 #t1 = t1 + t0 =>  t1 = 4 + 1 = 5
addi t0, t1, 15  #s1 = t1 + 15 => s1 = 5 + 15 = 20
nop