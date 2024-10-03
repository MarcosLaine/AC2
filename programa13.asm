.text
.globl _start
_start:
    # Carregar o valor de x
    la t0, x              # Carrega o endereço de x em t0
    lw t1, 0(t0)          # Carrega o valor de x em t1

    # Carregar o valor de z
    la t0, z              # Carrega o endereço de z em t0
    lw t2, 0(t0)          # Carrega o valor de z em t2

    # Calcular 127 * x
    li t3, 127            # Carrega o valor 127 em t3
    mul t4, t1, t3        # t4 = 127 * x

    # Calcular 65 * z
    li t3, 65             # Carrega o valor 65 em t3
    mul t5, t2, t3        # t5 = 65 * z

    # Calcular 127 * x - 65 * z
    sub t6, t4, t5        # t6 = 127 * x - 65 * z

    # Adicionar 1 ao resultado
    addi t6, t6, 1        # t6 = t6 + 1 (y = 127 * x - 65 * z + 1)

    # Armazenar o resultado em y
    la t0, y              # Carrega o endereço de y em t0
    sw t6, 0(t0)          # Armazena o valor de y na memória

# Seção de dados
.data
x: .word 5                # Valor de x
z: .word 7                # Valor de z
y: .word 0                # Inicialmente 0, será sobrescrito com o valor de y
