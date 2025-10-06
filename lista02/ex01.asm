.text

main:
  addi $2, $0, 5
  syscall
  add $8, $0, $2
  addi $2, $0, 5
  syscall
  add $9, $0, $2
  
  slt $10, $8, $9, #se ($8<$9)$10 = 1 senao $10=0
  beq $10, $0, maior8 # se for igual zero então $8 não é menor que $9
  add $4, $0, $9
  j imp # jump to rotulo, se não tivesse ia pro igual
  
maior8:
  add $4, $0, $8
  
imp:
  addi $2, $0, 1
  syscall