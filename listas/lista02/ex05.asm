.text

main:
  addi $2, $0, 5
  syscall
  add $8, $0, $2
  
  addi $2, $0, 5
  syscall
  add $9, $0, $2
  
  addi $2, $0, 5
  syscall
  add $10, $0, $2
  
  mul $9, $9, 2
  mul $10, $10, 3
  
  add $11, $8, $9
  add $11, $11, $10
  
  addi $12, $0, 6
  
  div $11, $12
  mflo $11
  
  add $4, $0, $11
  addi $2, $0, 1
  syscall
  
  add $4, $0, ' '
  addi $2, $0, 11
  syscall
  
  addi $13, $0, 60 
  slt $12, $11, $13
  beq $12, 1, reprovado
  add $4, $0, 'A'
  j fim

reprovado:  
  add $4, $0, 'R'

fim:
  addi $2, $0, 11
  syscall
  
  addi $2, $0, 10
  syscall
  