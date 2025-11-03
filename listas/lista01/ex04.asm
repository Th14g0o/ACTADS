.text

main:
  addi $2, $0, 5
  syscall
  add $8, $0, $2
  
  addi $2, $0, 5
  syscall
  add $9, $0, $2
  
  add $10, $8, $9
  addi $11, $0, 2
  div $12, $10, $11 # é o que temos pra hoje, n sei trabalhar com float
  
  add $4, $0, $12
  addi $2, $0, 1
  syscall
  
  

  

 
