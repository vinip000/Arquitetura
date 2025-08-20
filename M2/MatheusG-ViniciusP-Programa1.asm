# Disciplina: Arquitetura e Organização de Processadores
# Atividade: Avaliação 03 – Programação de procedimentosem Linguagem de Montagem
# Programa 01
# Grupo: - Vinicius Pereira
# - Matheus Gamez


.data 
texto1: .asciz "insira o valor de X: "
texto2: .asciz "insira o valor de N: "
texto3: .asciz "resultado:"

.text

main:
addi sp,sp, -16

addi a7, zero, 4
la a0, texto1
ecall
 
addi a7, zero, 5
ecall
sw a0, 0(sp)
 
addi a7, zero, 4
la a0, texto2
ecall
 
addi a7, zero, 5
ecall
sw a0, 4(sp)

addi t2, zero, 1

lw t0, 0(sp)
lw t1, 4(sp)

loop: 
beq t1, zero, end
mul t2, t2, t0
addi t1,t1, -1
j loop

end:
nop

