.data
.text

main:
  lui $8, 0x1001 # inicio do vetor
  addi $9, $0, 0 # contador loop preenchimento
populandovetor: 
  beq $9, 10, maiorinicial

  addi $2, $0, 5
  syscall
  sw $2, 0($8)
  
  addi $8, $8, 4 # move o indice do vetor
  addi $9, $9, 1 # incremento
  j populandovetor
 
maiorinicial:
  lui $8, 0x1001 # volta pro inicio do vetor
  
  lw $9, 0($8) # o n1
  addi $8, $8, 4
  lw $10, 0($8) # o n2 
  add $11, $9, $10 # a soma atual,
 
  add $12, $0, $9 # n1 maior ,
  add $13, $0, $10 # n2 maior,
  add $14, $0, $11 # a soma maior, 
  
  addi $15, $0, 1 # contador i
  addi $16, $0, 0 # indice maior seq
percorrevetor:
  beq $15, 9, fim
  
  lw $9, 0($8) # n1 
  addi $8, $8, 4
  lw $10, 0($8) # o n2 
  add $11, $9, $10 # a soma atual
  
  add $17, $0, $14
  sub $17, $17, $11 
  srl $17, $17, 31 
  beq $17, 0, naoatualizamaior
  
  addi $16, $15, 0 # indice maior seq
  add $12, $0, $9 
  add $13, $0, $10
  add $14, $0, $11
naoatualizamaior:  
  addi $15, $15, 1 # incremento
  j percorrevetor
  
fim:
  addi $2, $0, 1
  add $4, $0, $12
  syscall
  addi $2, $0, 11
  add $4, $0, '+'
  syscall
  addi $2, $0, 1
  add $4, $0, $13
  syscall
  
  addi $2, $0, 11
  add $4, $0, ' '
  syscall
  addi $2, $0, 11
  add $4, $0, '='
  syscall
  addi $2, $0, 11
  add $4, $0, ' '
  syscall
  addi $2, $0, 1
  add $4, $0, $14
  syscall
  
  addi $2, $0, 11
  add $4, $0, '\n'
  syscall
  
  addi $2, $0, 11
  add $4, $0, 'p'
  syscall
  addi $2, $0, 1
  add $4, $0, $16
  syscall

  addi $2, $0, 10
  syscall