.text

main:
  addi $2, $0, 5
  syscall
  add $10, $0, $2   # qtd multiplos, parada
  
  addi $2, $0, 5
  syscall
  add $8, $0, $2   # contem multiplos
  add $20, $0, $8 # constante de multiplo
  
  addi $9, $0, 0   # i = 0
  
test:
  beq $9, $10, fimLaco
  # implementação
  
  add $4, $0, $8
  addi $2, $0, 1
  syscall
  
  add $4, $0, '\n'
  addi $2, $0, 11
  syscall
  
  add $8, $8, $20
  
  # incremento do i
  addi $9, $9, 1
  j test
  
fimLaco:
  