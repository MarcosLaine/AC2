.text
.globl _start
_start:
    # Inicializar os valores de x e y em s0 e s1
    li s0, um_valor_inteiro_qualquer    # x = um_valor_inteiro_qualquer
    li s1, um_valor_inteiro_qualquer    # y = um_valor_inteiro_qualquer
    
    # Inicializar m com 0
    li s2, 0                           # m = 0

    # Comparar x e y
    bgt s0, s1, maior_x                # Se x > y, vai para 'maior_x'
    
    # Caso contrário, m = y
    mv s2, s1                          # m = y
    j fim                              # Pula para o fim

maior_x:
    # Se x > y, m = x
    mv s2, s0                          # m = x

fim:
    # Fim do programa
    # Aqui, o valor de m estará em s2
    nop                                # No operation (pode ser substituído por outro código ou fim do programa)
