.text
.globl _start
_start:
    # Carregar os endereços de x1, x2, x3 e x4
    la t0, x1             # Carrega o endereço de x1 em t0
    lw t1, 0(t0)          # Carrega o valor de x1 em t1

    la t0, x2             # Carrega o endereço de x2 em t0
    lw t2, 0(t0)          # Carrega o valor de x2 em t2

    la t0, x3             # Carrega o endereço de x3 em t0
    lw t3, 0(t0)          # Carrega o valor de x3 em t3

    la t0, x4             # Carrega o endereço de x4 em t0
    lw t4, 0(t0)          # Carrega o valor de x4 em t4

    # Somar os valores lidos
    add t5, t1, t2        # t5 = x1 + x2
    add t5, t5, t3        # t5 = t5 + x3
    add t5, t5, t4        # t5 = t5 + x4

    # Armazenar o resultado da soma na posição de memória 'soma'
    la t0, soma           # Carrega o endereço de 'soma' em t0
    sw t5, 0(t0)          # Armazena o valor da soma em 'soma'

# Seção de dados
.data
x1: .word 15
x2: .word 25
x3: .word 13
x4: .word 17
soma: .word -1            # Inicializa 'soma' com -1 (será sobrescrito pelo valor da soma)
