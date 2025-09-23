.text

main:
  addi $2, $0, 5
  syscall
  add $8, $0, $5 # horas
  
  addi $9, $0, 3600
  mult $8, $9
  mfhi $10
  add $11, $0, $10
  
  sub $8, $0, $8
  addi $2, $0, 5
  syscall
  add $8, $0, $5 # min
  
  sub $9, $0, $9
  addi $9, $0, 60
  mult $8, $9
  mfhi $10
  add $11, $0, $10
  
  sub $8, $0, $8
  addi $2, $0, 5
  syscall
  add $8, $0, $5
  add $11, $0, $8
  
  addi $2, $0, 1
  add $4, $0, $11
  syscall  
  
