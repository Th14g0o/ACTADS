.text

main:
  addi $2, $0, 5
  syscall 
  add $8, $0, $2
  
  slt $9, $8, $0
  beq $9, 1, quadrado
  mul $8, $8, 2
  j impressao
  
 quadrado:
   mul $8, $8, $8
 
 impressao:
   add $4, $0, $8
   addi $2, $0, 1
   syscall
   
   addi $2, $0, 10
   syscall