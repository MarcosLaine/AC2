.text
.globl _start
_start:
    # Carregar o endereço de A e B em registradores
    la t0, A              # Carrega o endereço base de A em t0
    la t1, B              # Carrega o endereço base de B em t1

    # Operação para A[0] = B[0] * 1 + A[0]
    lw t2, 0(t1)          # Carrega B[0] em t2
    li t3, 1              # Carrega 1 em t3
    mul t2, t2, t3        # t2 = B[0] * 1
    lw t4, 0(t0)          # Carrega A[0] em t4
    add t4, t4, t2        # t4 = A[0] + B[0] * 1
    sw t4, 0(t0)          # Armazena o valor em A[0]

    # Operação para A[1] = B[1] * 2 + A[1]
    lw t2, 4(t1)          # Carrega B[1] em t2
    li t3, 2              # Carrega 2 em t3
    mul t2, t2, t3        # t2 = B[1] * 2
    lw t4, 4(t0)          # Carrega A[1] em t4
    add t4, t4, t2        # t4 = A[1] + B[1] * 2
    sw t4, 4(t0)          # Armazena o valor em A[1]

    # Operação para A[2] = B[2] * 3 + A[2]
    lw t2, 8(t1)          # Carrega B[2] em t2
    li t3, 3              # Carrega 3 em t3
    mul t2, t2, t3        # t2 = B[2] * 3
    lw t4, 8(t0)          # Carrega A[2] em t4
    add t4, t4, t2        # t4 = A[2] + B[2] * 3
    sw t4, 8(t0)          # Armazena o valor em A[2]

    # Operação para A[3] = B[3] * 4 + A[3]
    lw t2, 12(t1)         # Carrega B[3] em t2
    li t3, 4              # Carrega 4 em t3
    mul t2, t2, t3        # t2 = B[3] * 4
    lw t4, 12(t0)         # Carrega A[3] em t4
    add t4, t4, t2        # t4 = A[3] + B[3] * 4
    sw t4, 12(t0)         # Armazena o valor em A[3]

    # Operação para A[4] = B[4] * 5 + A[4]
    lw t2, 16(t1)         # Carrega B[4] em t2
    li t3, 5              # Carrega 5 em t3
    mul t2, t2, t3        # t2 = B[4] * 5
    lw t4, 16(t0)         # Carrega A[4] em t4
    add t4, t4, t2        # t4 = A[4] + B[4] * 5
    sw t4, 16(t0)         # Armazena o valor em A[4]

.data
A: .word 1, 3, 5, 7, 9    # Array A
B: .word 2, 4, 6, 8, 10   # Array B
