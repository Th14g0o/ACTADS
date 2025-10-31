.text

main:
  addi $2, $0, 5
  syscall
  add $8, $0, $2
  
  addi $9, $0, 1 # imprimidos
  
  addi $10, $0, 1 # linhas, i

linha:
  beq $10, $8, terminou
  addi $11, $0, 1 # colunas, j
  
coluna:
  add $4, $0, $9
  addi $2, $0, 1
  syscall
  addi $4, $0, ' '
  addi $2, $0, 11
  syscall
  addi $9, $9, 1
  
  beq $11, $10, incrementolinha
  addi $11, $11, 1
  j coluna 
incrementolinha:
  addi $10, $10, 1
  
  addi $4, $0, '\n'
  addi $2, $0, 11
  syscall
  
  j linha
  
terminou:
  addi $2, $0, 10
  syscall
