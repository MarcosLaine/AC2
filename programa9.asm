# Programa 9
# Inicialmente escreva um programa que faça: x8 = 0x12345678.
# A partir do registrador x8 acima, usando apenas instruções lógicas (or, ori, and, andi, xor, xori) e instruções de deslocamento (sll, srl e sra),
# você deverá obter os seguintes valores nos respectivos registradores:
# x9 = 0x12
# x10 = 0x34
# x11 = 0x56
# x12 = 0x78

li x8,  0x12345678

srli x9, x8, 24

srli x10, x8, 16
andi x10, x10, 0xFF

srli x11, x8, 8
andi  x11, x11, 0xFF

andi x12, x8,  0xFF

nop