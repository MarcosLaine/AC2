.text
.globl maximo
maximo:
    # Inicializa max = v[0]
    lw t0, 0(a0)              # Carrega v[0] em t0 (max)

    # Inicializa o índice i = 1
    li t1, 1                  # i = 1

loop:
    # Verifica se i < n
    bge t1, a1, end_loop      # Se i >= n, termina o loop

    # Calcula o endereço de v[i]
    slli t2, t1, 2            # t2 = i * 4 (cada elemento ocupa 4 bytes)
    add t2, a0, t2            # t2 = endereço de v[i]

    # Carrega o valor de v[i]
    lw t3, 0(t2)              # Carrega v[i] em t3

    # Verifica se v[i] > max
    ble t3, t0, skip_update   # Se v[i] <= max, pula para skip_update

    # Atualiza max = v[i]
    mv t0, t3                 # max = v[i]

skip_update:
    # Incrementa o índice i
    addi t1, t1, 1            # i++

    # Volta ao início do loop
    j loop

end_loop:
    # Retorna o valor de max em a0
    mv a0, t0
    ret

.data
# Teste de dados (opcional)
v: .word 3, 15, 7, 2, 18, 5, 21, 9, 1, 14  # Vetor de exemplo com 10 elementos
