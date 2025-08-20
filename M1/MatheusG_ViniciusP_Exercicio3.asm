# Disciplina: Arquitetura e Organização de Processadores
# Atividade: Avaliação 01 – Programação em Linguagem de Montagem
# Programa 03
# Grupo: Matheus Gamez e Vinicius Pereira

.data
	memoria1: .word 10
	memoria2: .word 20
	pergunta1: .asciz " Insira o valor da memoria 1: "
	pergunta2: .asciz " Insira o valor da memoria 2: "
	pergunta3: .asciz " Deseja mudar os valores ou deseja mante-los? (1 = mudar | 2 = manter): "
	error: .asciz " Opção Invalida."
	
.text
addi s5, zero, 1
addi s6, zero, 2


addi a7, zero, 4
la, a0, pergunta1
ecall

addi a7, zero, 5
ecall
add s1, zero, a0

la t0, memoria1
sw s1, 0(t0)


addi a7, zero, 4
la, a0, pergunta2
ecall

addi a7, zero, 5
ecall
add s2, zero, a0

la t1, memoria2
sw s2, 0(t1)


addi a7, zero, 4
la, a0, pergunta3
ecall

addi a7, zero, 5
ecall
add s0, zero, a0


beq s0, s5, mudar_memorias
jal zero, end_memorias
mudar_memorias:
lw s1, 0(t1)
lw s2, 0(t0)

addi a7, zero, 1
add, a0, zero, s1
ecall

addi a7, zero, 1
add, a0, zero, s2
ecall
nop

jal zero, fim

end_memorias:
addi a7, zero, 1
add, a0, zero, s1
ecall

addi a7, zero, 1
add, a0, zero, s2
ecall
nop

fim:
 

