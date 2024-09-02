addi s1, zero, 2
addi s2, zero, 3
addi s3, zero, 4
addi s4, zero, 5
add t0, s1, s2 #(a + b)
add t1 s3, s4 #(c + d)
sub t2, t0, t1 #t0 - t1 = (a + b) - (c + d)
sub t3, s1, s2 # (2 - 3)
add t4, t3, t2 # (t3 - x)
add s2, t1, t3 # x - y