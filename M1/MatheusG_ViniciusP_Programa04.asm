# Disciplina: Arquitetura e Organização de Processadores
# Atividade: Avaliação 01 – Programação em Linguagem de Montagem
# Programa 04
# Grupo: - Matheus G
# - Vinicius Pereira

.data
texto1: .asciz "Insira o valor de X: "
texto2: .asciz "Insira o valor de Y: "
texto3: .asciz "Insira apenas valores positivos: "
texto4: .asciz "O valor do mdc eh: "

.text
 
  addi a7, zero, 4
  la a0, texto1
  ecall
 
 
  addi a7, zero, 5
  ecall
  add t0, zero, a0
 

  addi a7, zero, 4
  la a0, texto2
  ecall
 
 
  addi a7, zero, 5
  ecall
  add t1, zero, a0

  blt t0, zero, menor
  blt t1, zero, menor

  add t3, zero, zero

  loop:
    beq t0, t1, fim
   
    blt t0, t1, teste
      sub t3, t0, t1
     
      add t0, zero, t3
     
      jal zero, loop
   
    teste:
      sub, t3, t1, t0
     
      add t1, zero, t3
     
      jal zero, loop
   
  fim:
  addi a7, zero, 4
  la a0, texto4
  ecall
 
    addi a7, zero, 1
    add a0, zero, t0
    ecall
   
 
    jal zero, fim2
   
  menor:
    addi a7, zero, 4
    la a0, texto3
    ecall
   
  fim2: