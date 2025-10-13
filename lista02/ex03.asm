.text

main:
  addi $2, $0, 5
  syscall
  add $8, $0, $2
  
  addi $2, $0, 5
  syscall
  add $9, $0, $2
  
  sub $10, $8, $9 
  slt $11, $10, $0 
  beq $11, 1, novemaior 
  add $11, $0, $8
  j fim

novemaior:
  mul $10, $10, -1
  add $11, $0, $9
  
fim:
  addi $2, $0, 1
  add $4, $0, $11
  syscall
  
  addi $2, $0, 11
  add $4, $0, '\n'
  syscall
  
  addi $2, $0, 1
  add $4, $0, $10
  syscall  
  
  addi $2, $0, 10
  syscall