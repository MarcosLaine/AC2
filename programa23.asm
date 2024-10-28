.text
.globl _start

_start:
    # Carregar o valor de A da memória para o registrador t0
    la t0, A            # Carrega o endereço de A em t0
    lw t1, 0(t0)        # Carrega o valor de A em t1

    # Chamar a função para calcular o módulo de A
    jal find_abs        # Chama a função find_abs (t1 contém o valor de A)

    # O resultado (módulo de A) está em t1
    # Armazenar o valor de volta em A
    sw t1, 0(t0)        # Escreve o valor absoluto em A

    # Finaliza o programa
    nop                 # No operation (pode ser substituído por instruções adicionais)

# Função para encontrar o módulo de um número
find_abs:
    # Verifica se t1 (valor de A) é negativo
    bltz t1, make_positive # Se t1 < 0, vai para make_positive
    jr ra                  # Se não for negativo, retorna

make_positive:
    # Inverte o sinal para tornar o valor positivo
    neg t1, t1             # t1 = -t1
    jr ra                  # Retorna

.data
A: .word -15              # Valor inicial de A (exemplo: -15, mas pode ser qualquer valor)
