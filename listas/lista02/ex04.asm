.text

main:
  addi $2, $0, 5
  syscall
  add $8, $0, $2
  
  addi $2, $0, 5
  syscall
  add $9, $0, $2
  
  add $4, $0, $8
  addi $2, $0, 1
  syscall
  
  addi $2, $0, 11
  add $4, $0, '='
  
  beq $8, $9, fim
  
menormaior:
  slt $10, $8, $9
  beq $10, 0, oitoehmaior
  add $4, $0, '<'   
  j fim
  
oitoehmaior:  
  add $4, $0, '>'  
  
fim:
  syscall

  add $4, $0, $9
  addi $2, $0, 1
  syscall