.text

main: 
  addi $2, $0, 5
  syscall
  add $8, $0, $2
  
  addi $9, $0, 0 # 9 vai ser o contador
  sub $10, $8, 1 # 10 vai ser o i 
  
  addi $2, $0, 1
  add $4, $0, $8
  syscall 
  addi $2, $0, 11
  addi $4, $0, ' '
  syscall
  
teste:
  beq $10, 1, fimfor
  
  div $8, $10
  mfhi $11
  beq $11, 0, dividiu
  j incrementoteste
dividiu:
  addi $9, $9, 1

incrementoteste:
  sub $10, $10, 1
  j teste
  
fimfor:  
  beq $9, $0, finalizar # é primo
  
  addi $2, $0, 11
  addi $4, $0, 'n'
  syscall
  addi $2, $0, 11
  addi $4, $0, 'ã'
  syscall
  addi $2, $0, 11
  addi $4, $0, 'o'
  syscall
  addi $2, $0, 11
  addi $4, $0, ' '
  syscall
  
  j finalizar

finalizar:
  addi $2, $0, 11
  addi $4, $0, 'e'
  syscall
  addi $2, $0, 11
  addi $4, $0, 'h'
  syscall
  addi $2, $0, 11
  addi $4, $0, ' '
  syscall
  addi $2, $0, 11
  addi $4, $0, 'p'
  syscall
  addi $2, $0, 11
  addi $4, $0, 'r'
  syscall
  addi $2, $0, 11
  addi $4, $0, 'i'
  syscall
  addi $2, $0, 11
  addi $4, $0, 'm'
  syscall
  addi $2, $0, 11
  addi $4, $0, 'o'
  syscall
  
  addi $2, $0, 10
  syscall