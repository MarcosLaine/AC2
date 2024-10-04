/*Código em C:
int a = 2;
int result = 0;

switch (a) {
    case 1:
        result = 10;
        break;
    case 2:
        result = 20;
        break;
    case 3:
        result = 30;
        break;
    default:
        result = -1;
        break;
}
*/

#asm:
.text
.globl _start
_start:
    # Inicializa a com 2 e result com 0
    li t0, 2              # a = 2
    li t1, 0              # result = 0

    # Implementar o switch/case
    li t2, 1              # Carrega 1 em t2
    beq t0, t2, case_1    # Se a == 1, vai para case_1
    li t2, 2              # Carrega 2 em t2
    beq t0, t2, case_2    # Se a == 2, vai para case_2
    li t2, 3              # Carrega 3 em t2
    beq t0, t2, case_3    # Se a == 3, vai para case_3

    # Caso default
default_case:
    li t1, -1             # result = -1
    j end_switch          # Pula para o final

    # Case 1: result = 10
case_1:
    li t1, 10             # result = 10
    j end_switch          # Pula para o final

    # Case 2: result = 20
case_2:
    li t1, 20             # result = 20
    j end_switch          # Pula para o final

    # Case 3: result = 30
case_3:
    li t1, 30             # result = 30
    j end_switch          # Pula para o final

end_switch:
    nop                   # No operation (ou fim do programa)
