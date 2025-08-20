# Disciplina: Arquitetura e Organização de Processadores
# Atividade: Avaliação 03 – Programação em Linguagem de Montagem
# Programa 02
# Grupo: - Matheus Gamez
# - Vinicius Pereira
.data
	pergunta1: .asciz " Digite o primeiro numero: "
	pergunta2: .asciz " Digite o segundo numero: "
	resposta: .asciz " O resultado é: "

.text


	j main
		
	loopMul:
	addi s4, zero, 0 #ble
	ble s1, s4, end
	
	mul s3, s3, s0
	addi s1, s1, -1
	j loopMul
	
	end:
	addi a7, zero, 4
	la a0, resposta
	ecall
	
	addi a7, zero, 1
	add a0, zero, s3
	ecall
	
	jalr ra
		
	main:
	addi s3, zero, 1 #resultado
	
	addi a7, zero, 4
	la a0, pergunta1
	ecall
	
	addi a7, zero, 5
	ecall
	add s0, zero, a0 #s0 = numero 1
	
	
	addi a7, zero, 4
	la a0, pergunta2
	ecall
	
	addi a7, zero, 5
	ecall
	add s1, zero, a0 #s1 = numero 2
	
	j loopMul
	