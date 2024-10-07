.text
.globl _start
_start:
    # Inicialização das variáveis i e x
    li s0, 8                # Suponha que i inicialmente é 8
    li s1, 0                # Inicializa x com 0

while_loop:
    # Verificar se i == 8
    li t0, 8                # Carrega o valor 8 em t0
    bne s0, t0, end_while   # Se i != 8, sai do loop

    # Se i == 8, executar x = i e i++
    mv s1, s0               # x = i
    addi s0, s0, 1          # i++

    # Voltar para o início do loop
    j while_loop

end_while:
    nop                     # Fim do loop, nenhuma operação (ou outro código pode continuar aqui)
