# Programa 3
#x=3;
#y=4;
#z=(15-x)+(67-y)+4;

addi s1, zero, 3 #s1=3
addi s2, zero, 4 #s2=4
addi t0, zero, 15 #t0 = 15
sub t0, t0, s1 #t0 = 15 - x (15 - 3 = 12)
addi t1, zero, 67 #t1 = 67
sub t1, t1, s2 #t1 = 67 - x (67 - 4 = 63)
add t0, t0, t1 #t0 = t0 + t1 ( 63 + 12 = 75)
addi t0, t0, 4 #t0 = t0 + 4 (75 + 4 = 79)