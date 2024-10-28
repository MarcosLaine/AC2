.text
.globl _start
_start:
    # Carregar o valor de x da memória
    la t0, x                # Carrega o endereço de x em t0
    lw t1, 0(t0)            # Carrega o valor de x em t1

    # Verificar se x é par ou ímpar
    andi t2, t1, 1          # t2 = x & 1 (verificar o bit menos significativo)
    beqz t2, even_case      # Se t2 == 0, x é par, vai para even_case

    # Caso ímpar: y = x^5 - x^3 + 1
odd_case:
    mul t3, t1, t1          # t3 = x^2
    mul t4, t3, t1          # t4 = x^3
    mul t5, t4, t1          # t5 = x^4
    mul t6, t5, t1          # t6 = x^5

    sub t7, t6, t4          # t7 = x^5 - x^3
    addi t7, t7, 1          # t7 = t7 + 1 (y = x^5 - x^3 + 1)
    j store_y               # Pular para armazenar y

even_case:
    # Caso par: y = x^4 + x^3 - 2x^2
    mul t3, t1, t1          # t3 = x^2
    mul t4, t3, t1          # t4 = x^3
    mul t5, t3, t3          # t5 = x^4

    add t6, t5, t4          # t6 = x^4 + x^3
    slli t3, t3, 1          # t3 = 2 * x^2 (shift left 1 bit para multiplicar por 2)
    sub t7, t6, t3          # t7 = x^4 + x^3 - 2x^2

store_y:
    # Armazenar o valor de y na memória
    la t0, y                # Carrega o endereço de y em t0
    sw t7, 0(t0)            # Armazena o valor de y em y

    # Finaliza o programa
    nop                     # No operation (pode ser substituído por outro código)

.data
x: .word 3                  # Valor de x (pode ser qualquer valor)
y: .word 0                  # Inicializar y com 0 (será sobrescrito)
