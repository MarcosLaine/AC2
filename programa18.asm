.text
.globl _start
_start:
    # Suponha que temp já tenha um valor
    # Inicializar temp e x em s0 e s1
    li s0, um_valor_inteiro_qualquer    # temp = um_valor_inteiro_qualquer
    li s1, 0                            # Inicializa x = 0 (default)

    # Implementação do switch/case
    li t0, 10                           # Carrega o valor 10 em t0
    beq s0, t0, case_10                 # Se temp == 10, vai para case_10

    li t0, 25                           # Carrega o valor 25 em t0
    beq s0, t0, case_25                 # Se temp == 25, vai para case_25

    # Caso default: x = 0
    j end_switch                        # Pula para o fim

case_10:
    li s1, 10                           # x = 10
    j end_switch                        # Pula para o fim

case_25:
    li s1, 25                           # x = 25
    j end_switch                        # Pula para o fim

end_switch:
    nop                                 # No operation (pode ser substituído por outras instruções)
