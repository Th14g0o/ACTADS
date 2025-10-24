.text

main:
  addi $8, $0, 3   # contem multiplos
  addi $10, $0, 10 # parada
  addi $9, $0, 0   # i = 0
  
test:
  beq $9, $10, fimLaco
  # implementa��o
  
  add $4, $0, $8
  addi $2, $0, 1
  syscall
  
  add $4, $0, '\n'
  addi $2, $0, 11
  syscall
  
  addi $8, $8, 3
  
  # incremento do i
  addi $9, $9, 1
  j test
  
fimLaco:
  