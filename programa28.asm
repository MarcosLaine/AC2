.text
.globl _start
_start:
    # Carregar o valor de x da memória
    la t0, x                # Carrega o endereço de x em t0
    lw t1, 0(t0)            # Carrega o valor de x em t1

    # Verificar se x > 0
    bgt t1, zero, positive_case # Se x > 0, vai para o caso positivo

negative_or_zero_case:
    # Caso x <= 0: y = x^4 - 1
    mul t2, t1, t1          # t2 = x^2
    mul t3, t2, t1          # t3 = x^3
    mul t4, t3, t1          # t4 = x^4
    addi t5, t4, -1         # t5 = x^4 - 1 (y)

    j store_y               # Pular para armazenar y

positive_case:
    # Caso x > 0: y = x^3 + 1
    mul t2, t1, t1          # t2 = x^2
    mul t3, t2, t1          # t3 = x^3
    addi t5, t3, 1          # t5 = x^3 + 1 (y)

store_y:
    # Armazenar o valor de y na memória
    la t0, y                # Carrega o endereço de y em t0
    sw t5, 0(t0)            # Armazena o valor de y em y

    # Finaliza o programa
    nop                     # No operation (pode ser substituído por outro código)

.data
x: .word 3                  # Valor de x (pode ser qualquer valor para teste)
y: .word 0                  # Inicializar y com 0 (será sobrescrito)
