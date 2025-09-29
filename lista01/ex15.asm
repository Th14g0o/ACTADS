.text

main:
  addi $2, $0, 5
  syscall
  add $8, $0, $2
  
  addi $9, $0, 10
  
  div $8, $9
  mflo $10
  mfhi $11
  add $8, $0, $10 
  
  div $8, $9
  mflo $10
  mfhi $12
  add $8, $0, $10 
  
  div $8, $9
  mflo $10
  mfhi $13
  add $8, $0, $10
  
  div $8, $9
  mflo $10
  mfhi $8
  
  sub $10, $0, $8 # 0 - num
  srl $14, $10, 31 # sinal de 0 - num
  sll $14, $14, 4 # 16 vezes o sinal  
  addi $4, $8, 32 # num mais 32 
  add $4, $14, $4 # 16 vezes o sinal + num mais 32
  addi $2, $0, 11
  syscall
  
  sub $10, $0, $13 # 0 - num
  srl $14, $10, 31 # sinal de 0 - num
  sll $14, $14, 4 # 16 vezes o sinal  
  addi $4, $13, 32 # num mais 32 
  add $4, $14, $4 # 16 vezes o sinal + num mais 32
  addi $2, $0, 11
  syscall
  
  sub $10, $0, $12 # 0 - num
  srl $14, $10, 31 # sinal de 0 - num
  sll $14, $14, 4 # 16 vezes o sinal  
  addi $4, $12, 32 # num mais 32 
  add $4, $14, $4 # 16 vezes o sinal + num mais 32
  addi $2, $0, 11
  syscall
  
  sub $10, $0, $11 # 0 - num
  srl $14, $10, 31 # sinal de 0 - num
  sll $14, $14, 4 # 16 vezes o sinal  
  addi $4, $11, 32 # num mais 32 
  add $4, $14, $4 # 16 vezes o sinal + num mais 32
  addi $2, $0, 11
  syscall
  