.text
.globl _start
_start:
    # Inicializar i com 0
    li s0, 0                   # i = 0

for_loop:
    # Verificar se i < 10
    li t0, 10                  # Carrega 10 em t0
    bge s0, t0, end_for        # Se i >= 10, sai do loop

    # Carregar o valor de A[i], somar 1 e armazenar de volta em A[i]
    la t1, A                   # Carrega o endereço base do array A em t1
    slli t2, s0, 2             # t2 = i * 4 (multiplica i por 4 para acessar A[i])
    add t3, t1, t2             # t3 = endereço de A[i]
    lw t4, 0(t3)               # Carrega A[i] em t4
    addi t4, t4, 1             # A[i] = A[i] + 1
    sw t4, 0(t3)               # Armazena o novo valor em A[i]

    # Incrementar i
    addi s0, s0, 1             # i++

    # Repetir o loop
    j for_loop

end_for:
    nop                        # Fim do loop

.data
A: .word 0, 0, 0, 0, 0, 0, 0, 0, 0, 0   # Inicializar o array A com 10 valores 0
