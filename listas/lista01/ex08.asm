.text

main:
  addi $2, $0, 5
  syscall
  add $8, $0, $2 # horas
  
  addi $9, $0, 3600
  mult $8, $9
  mflo $10
  add $11, $11, $10
  
  addi $2, $0, 5
  syscall
  add $8, $0, $2 # min
  
  addi $9, $0, 60
  mult $8, $9
  mflo $10
  add $11, $11, $10
  
  addi $2, $0, 5
  syscall
  add $11, $11, $2
  
  addi $2, $0, 1
  add $4, $0, $11
  syscall  
  
