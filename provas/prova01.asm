.text

main:
  addi $2, $0, 5
  syscall
  add $8, $0, $2 # qtd linhas
  
  srl $9, $8, 31
  beq $9, 1, invalido
  
  addi $9, $0, 10
  sub $9, $9, $8 # so vai ser negativo se $9 for menor que $8
  srl $9, $9, 31 
  beq $9, 1, invalido
  
  addi $9, $0, 1 # i do for
  
  addi $14, $0, 0 # numero printado
  
  addi $16, $8, 1  #limite do primeiro for
  
testelinha:
  beq $9, $16, finalizar
  
  addi $10, $0, 0 # j do segundo for
  addi $15, $14, 1 #limite do segundo for 
   
  sub $11, $8, $15 # qtd max de espacos(qtd linhas - limite_j)
  addi $12, $0, 0 # k do terceiro for
geraespacos:
  beq $12, $11, gerarnumeros
  
  addi $2, $0, 11
  addi $4, $0, ' '
  syscall
  
  addi $12, $12, 1
  j geraespacos

gerarnumeros:
  beq $10, $15, incrementolinha
  
  addi $2, $0, 1
  add $4, $0, $14
  syscall
  
  addi $10, $10, 1
  j gerarnumeros
  
incrementolinha:
 addi $2, $0, 11
 addi $4, $0, '\n'
 syscall
 addi $9, $9, 1 
 addi $14, $14, 1
 j testelinha

invalido:
  addi $2,  $0, 11
  add $4, $0, 'N'
  syscall
  addi $2,  $0, 11
  add $4, $0, 'u'
  syscall
  addi $2,  $0, 11
  add $4, $0, 'm'
  syscall
  addi $2,  $0, 11
  add $4, $0, 'e'
  syscall
  addi $2,  $0, 11
  add $4, $0, 'r'
  syscall
  addi $2,  $0, 11
  add $4, $0, 'o'
  syscall
  addi $2,  $0, 11
  add $4, $0, ' '
  syscall
  addi $2,  $0, 11
  add $4, $0, 'I'
  syscall
  addi $2,  $0, 11
  add $4, $0, 'n'
  syscall
  addi $2,  $0, 11
  add $4, $0, 'v'
  syscall
  addi $2,  $0, 11
  add $4, $0, 'a'
  syscall
  addi $2,  $0, 11
  add $4, $0, 'l'
  syscall
  addi $2,  $0, 11
  add $4, $0, 'i'
  syscall
  addi $2,  $0, 11
  add $4, $0, 'd'
  syscall
  addi $2,  $0, 11
  add $4, $0, 'o'
  syscall
  
finalizar:
  addi $2, $0, 10
  syscall
  
