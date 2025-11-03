.text

main:
  # Depois da explicação de braulio
  addi $2, $0, 5
  syscall
  add $8, $0, $2
  
  addi $9, $0, 8
  div $8, $9
  mflo $9
  
  add $8, $8, $9
  
  addi $9, $0, 2
  div $8, $9
  mfhi $9
  
  addi $10, $9, 30 
  
  addi $2, $0, 1
  add $4, $0, $10
  syscall
  
  addi $2, $0, 11
  addi $4, $0, '\n'
  syscall
  
  # Braulio
  addi $2, $0, 5
  syscall
  add $8, $0, $2
       
  addi $9, $0, 8
  div $8, $9
       
  mflo $10
       
  add $11, $8, $10
       
  andi $12, $11, 1  
       
  addi $4, $12, 30
  addi $2, $0, 1
  syscall
       
  addi $2, $0, 10
  syscall
  