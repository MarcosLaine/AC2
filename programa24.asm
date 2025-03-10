.text
.globl _start
_start:
    # Inicializar registradores para soma e maior
    li t0, 0               # t0 será usado para acumular a soma (Soma)
    li t1, -1              # t1 será usado para armazenar o maior valor (Maior)

    # Inicializar o registrador para acessar o vetor
    la t2, Vetor           # t2 aponta para o início do vetor
    li t3, 16              # t3 será o contador do loop (tamanho do vetor)

loop:
    # Verificar se já percorremos todos os elementos
    beqz t3, end_loop      # Se t3 == 0, termina o loop

    # Carregar o próximo elemento do vetor
    lw t4, 0(t2)           # Carrega o valor atual do vetor em t4

    # Atualizar a soma
    add t0, t0, t4         # Soma = Soma + Vetor[i]

    # Verificar se o elemento atual é maior que o maior encontrado
    ble t1, t4, update_max # Se t4 > t1, atualiza o maior valor

    # Atualizar o ponteiro para o próximo elemento do vetor
    addi t2, t2, 4         # Avança para o próximo elemento
    addi t3, t3, -1        # Decrementa o contador do loop
update_max:
    mv t1, t4
end_loop:
sw t0,Soma
sw t1, Maior 
.data
 Vetor: .word 1, 3, 5, 7, 9, 11, 13, 0, 2, 4, 6, 8, 10, 12
