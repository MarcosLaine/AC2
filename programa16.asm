.text
.globl _start
_start:
    # Inicializar as variáveis a e b com valores inteiros
    li t0, um_valor_inteiro_qualquer    # a = um_valor_inteiro_qualquer
    li t1, um_valor_inteiro_qualquer    # b = um_valor_inteiro_qualquer
    
    # Inicializar x com 0
    li t2, 0                            # x = 0

    # Verificar a >= 0
    blt t0, zero, fim                   # Se a < 0, pula para fim

    # Verificar b <= 50
    li t3, 50                           # Carrega o valor 50 em t3
    bgt t1, t3, fim                     # Se b > 50, pula para fim

    # Se ambas as condições forem verdadeiras, x = 1
    li t2, 1                            # x = 1

fim:
    # Fim do programa
    nop                                 # No operation (pode ser substituído por outro código)
