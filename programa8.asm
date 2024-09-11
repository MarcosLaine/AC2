# Programa 8
# Considere a seguinte instrução iniciando um programa: ori x8, x0, 0x01
# Usando apenas instruções lógicas e instruções de deslocamento, continue o programa de forma que ao final, tenhamos o seguinte conteúdo no registrador x8: x8 = 0xFFFFFFFF = maior int possível = 2^32 - 1
ori x8, x0, 0x01
slli x8, x8, 31
addi x9, x8, 0

addi s2, s3, 1

sub x8, x8, s2

add x8, x8, x9

nop