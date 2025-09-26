.text

main:
  addi $2, $0, 5
  syscall
  add $8, $0, $2
  
  sub $9, $0, $8 # 0 - num
  srl $10, $9, 31 # sinal de 0 - num
  sll $11, $10, 4 # 16 vezes o sinal  
  
  addi $4, $8, 32 # num mais 32 
  add $4, $11, $4 # 16 vezes o sinal + num mais 32
  
  addi $2, $0, 11
  syscall