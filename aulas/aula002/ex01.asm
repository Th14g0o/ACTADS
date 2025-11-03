.text

main:
  addi $2, $0, 5
  syscall
  add $8, $0, $2
  addi $2, $0, 5
  syscall
  add $9, $0, $2
  
  beq $8, $9, igual
  
  # se forem diferentes
  addi $4, $0, '|'
  j imp # jump to rotulo, se não tivesse ia pro igual
  
igual:
  addi $4, $0, '='
# vai para o proximo rotulo
imp:
  addi $2, $0, 11
  syscall