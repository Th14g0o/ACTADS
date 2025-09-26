.text

main:
  addi $2, $0, 5
  syscall
  add $8, $0, $2
  
  addi $2, $0, 5
  syscall
  add $9, $0, $2
  
  add $11, $8, $9
  add $11, $11, $10  
  
  addi $12, $0, 2
  
  div $11, $12
  mflo $13
  mfhi $14
  
  mul $14, $14, 100
  div $14, $12
  mflo $14
  
  addi $2, $0, 1
  add $4, $0, $13
  syscall
  
  addi $2, $0, 11
  add $4, $0, ','
  syscall
  
  addi $2, $0, 1
  add $4, $0, $14
  syscall
  
  
