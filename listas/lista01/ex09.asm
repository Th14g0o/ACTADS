.text

main:
  addi $2, $0, 5
  syscall
  add $8, $0, $2
  
  addi $9, $0, 3600
  div $8, $9
  mflo $10
  mfhi $11
  add $12, $0, $10
  add $8, $0, $11
  
  addi $9, $0, 60
  div $8, $9
  mflo $10
  mfhi $11
  add $13, $0, $10
  add $8, $0, $11
  
  add $14, $0, $8
  
  addi $2, $0, 1
  add $4, $0, $12
  syscall
  
  addi $2, $0, 11 # imprime caractere
  add $4, $0, 58 # codigo ascii
  syscall
  
  addi $2, $0, 1
  add $4, $0, $13
  syscall
  
  addi $2, $0, 11
  add $4, $0, 58
  syscall
  
  addi $2, $0, 1
  add $4, $0, $14
  syscall