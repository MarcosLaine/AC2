.text
.globl _start
_start:
    # Inicializa os dois primeiros termos da sequência de Fibonacci
    li t0, 1               # f(1) = 1
    li t1, 1               # f(2) = 1

    # Inicializa o contador de termos
    li t2, 3               # Começamos a partir de f(3)

fibonacci_loop:
    # Verificar se já chegamos ao 9º termo
    li t3, 9               # Queremos o 9º termo
    beq t2, t3, end_fibonacci # Se t2 == 9, sai do loop

    # Calcular o próximo termo da sequência
    add t4, t0, t1         # f(n) = f(n-1) + f(n-2)

    # Atualizar os valores dos termos anteriores
    mv t0, t1              # f(n-2) = f(n-1)
    mv t1, t4              # f(n-1) = f(n)

    # Incrementar o contador de termos
    addi t2, t2, 1         # t2++

    # Repetir o loop até o 9º termo
    j fibonacci_loop

end_fibonacci:
    # O valor de f(9) está em t1
    nop                    # Fim do programa
