.text
.globl _start
_start:
    # Inicializar i com 0
    li s0, 0                   # i = 0

for_loop:
    # Verificar se i < 10
    li t0, 10                  # Carrega 10 em t0
    bge s0, t0, end_for        # Se i >= 10, sai do loop

    # Calcular i % 2
    rem t1, s0, t0             # t1 = i % 2
    beqz t1, even_case         # Se i % 2 == 0, vai para even_case (i é par)

odd_case:
    # Caso ímpar: A[i] = A[i] * 2
    la t2, A                   # Carrega o endereço base do array A em t2
    slli t3, s0, 2             # t3 = i * 4 (multiplica i por 4 para acessar A[i])
    add t4, t2, t3             # t4 = endereço de A[i]
    lw t5, 0(t4)               # Carrega A[i] em t5
    slli t5, t5, 1             # A[i] = A[i] * 2
    sw t5, 0(t4)               # Armazena o novo valor em A[i]
    j next_iteration           # Vai para a próxima iteração

even_case:
    # Caso par: A[i] = A[i] + A[i+1]
    la t2, A                   # Carrega o endereço base do array A em t2
    slli t3, s0, 2             # t3 = i * 4 (multiplica i por 4 para acessar A[i])
    add t4, t2, t3             # t4 = endereço de A[i]
    lw t5, 0(t4)               # Carrega A[i] em t5

    addi t6, s0, 1             # t6 = i + 1
    slli t7, t6, 2             # t7 = (i + 1) * 4 (endereço de A[i+1])
    add t8, t2, t7             # t8 = endereço de A[i+1]
    lw t9, 0(t8)               # Carrega A[i+1] em t9
    add t5, t5, t9             # A[i] = A[i] + A[i+1]

    sw t5, 0(t4)               # Armazena o novo valor em A[i]

next_iteration:
    # Incrementar i
    addi s0, s0, 1             # i++

    # Repetir o loop
    j for_loop

end_for:
    nop                        # Fim do loop

.data
A: .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0   # Inicializar o array A com 10 valores 0
