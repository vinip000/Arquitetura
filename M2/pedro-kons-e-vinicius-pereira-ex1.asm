# Disciplina: Arquitetura e Organização de Processadores
# Atividade: Avaliação 03 – Programação de procedimentos em Linguagem de Montagem
# Programa 01 - Função Não Recursiva para Calcular o MDC
# Grupo: Pedro Kons, Vinicius Pereira

    .data
a: .word 36 #Numeros de exemplo para 'a' e para 'b'         
b: .word 18 #Numeros de exemplo para 'a' e para 'b'       

    .text
    .globl main

main:
   
    la t0, a  # Carrega 'a' em t0         
    lw t1, 0(t0)    # Carregar 'a' em t1   
    la t2, b   # Carrega 'b' em t2        
    lw t3, 0(t2)  # Carrega 'b' em t3
    
    jal ra, mdc #Chama função MDC

    addi a7, zero, 10 #Encerra o programa 
    ecall

mdc:
    add a0, t1, zero      #passando valores para a0 e a1
    add a1, t3, zero       

loop:
    beq a0, a1, end_loop  #Se a0 for igual  a a1, desvia para o end-loop
    bgt a0, a1, a_maior   #Se a0 for maior que a1, desvia para o a-maior
    sub a1, a1, a0    #Caso contrario     
    jal zero, loop    # retotna para o inicio do loop 

a_maior: #Função a-maior
    sub a0, a0, a1    #Subtrai a0 - a1    
    jal zero, loop    # Retorna para o loop      

end_loop:
    jr ra    #Retorna a chamada              
