# Programa 2
#x=1;
#y=5-x+15;

addi s1, zero, 1 #x=1
addi t0, zero, 5 #atribuindo 5 ao reg t0 para fazer a subtração
sub t0, t0, s1 #t0 = t0 - s1 => t0 = 5(t0) - x(s1)
addi s1, t0, 15 #s1 = t0 + 15 => s1 = (5-x) + 15 = 19