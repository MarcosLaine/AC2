# Programa 6
# ATENÇÃO: Use os shifts para gerar os valores muito grandes
# x = 1048576; // 2 a 20
# y = 4096; // 2 a 12
# z = x + y;

li s1, 1
li s2, 1

slli t0, s1, 20 #t0 = s1 (=0) + 2^20
slli t1, s2, 12  #t1 = s2 (=0) + 2^12
add t2, t0, t1   #t2 = t0 + t1 =  0 + 2^20 + 2^12 =  1048576 + 4096 = 1052672

nop