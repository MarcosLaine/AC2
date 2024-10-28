.text
.globl swap
swap:
    # temp = v[k]
    slli t1, a1, 2            # Multiplica k por 4 para obter o deslocamento (t1 = k * 4)
    add t2, a0, t1            # Calcula o endereço de v[k] (t2 = v + k * 4)
    lw t0, 0(t2)              # Carrega v[k] em temp (t0 = v[k])

    # v[k] = v[k+1]
    addi t2, t2, 4            # Calcula o endereço de v[k+1]
    lw t3, 0(t2)              # Carrega v[k+1] em t3
    sub t2, t2, 4             # Retorna para o endereço de v[k]
    sw t3, 0(t2)              # Armazena v[k+1] em v[k]

    # v[k+1] = temp
    addi t2, t2, 4            # Calcula o endereço de v[k+1] novamente
    sw t0, 0(t2)              # Armazena temp em v[k+1]

    # Retorna da função
    ret

.data
v: .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10  # Vetor para teste
