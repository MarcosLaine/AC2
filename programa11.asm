.text
.globl _start
_start:
    addi s1, zero, 1      # x = 1
    
    # Inicializamos um registrador com o endereço base (início da seção de dados)
    la t0, x1             # Carrega o endereço de x1 em t0

    # Carregamos os valores de x1, x2, x3 e x4 em registradores
    lw t1, 0(t0)          # Carrega o valor de x1 em t1
    lw t2, 4(t0)          # Carrega o valor de x2 em t2
    lw t3, 8(t0)          # Carrega o valor de x3 em t3
    lw t4, 12(t0)         # Carrega o valor de x4 em t4

.data
x1: .word 15
x2: .word 25
x3: .word 13
x4: .word 17
