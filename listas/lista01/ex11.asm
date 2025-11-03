.text

main:
  addi $2, $0 5
  syscall
  add $8, $0, $2
  
  addi $9, $0, 10
  
  div $8, $9
  mflo $10
  mfhi $11
  add $12, $0, $11
  sub $8, $0, $8
  add $8, $0, $10 
  
  addi $2, $0, 1
  add $4, $0, $12
  syscall
  
  div $8, $9
  mflo $10
  mfhi $11
  add $12, $0, $11
  add $8, $0, $10
  
  addi $2, $0, 1
  add $4, $0, $12
  syscall
  
  div $8, $9
  mflo $10
  mfhi $11
  add $12, $0, $11
  add $8, $0, $10
  
  addi $2, $0, 1
  add $4, $0, $12
  syscall
