.text

main:
  addi $2, $0, 5
  syscall 
  add $8, $0, $2 # n
  
  addi $9, $0, 0 # i = 0
  
  addi $20, $0, 1 # nat = 1
  
test:
  beq $9, $8, fimEXT # i < n
  
  addi $10, $9, 1 # cols = i + 1;
  
  addi $11, $0, 0 # j = 0

test2:
  beq $11, $10, fimINT # j < cols
  
  addi $2, $0, 1
  add $4, $0, $20
  syscall # imprime nat
  addi $2, $0, 11
  add $4, $0, ' '
  syscall # imprime espaço
  
  addi $20, $20, 1 # nat++
  
  addi $11, $11, 1 # j++;
  j test2
  
fimINT: # fim loop interno
  addi $2, $0, 11
  add $4, $0, '\n'
  syscall # imprime quebra
  
  addi $9, $9, 1 # i++;
  j test
 
fimEXT: # fim loop externo
  addi $2, $0, 10
  syscall
  
