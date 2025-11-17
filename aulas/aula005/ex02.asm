.text
main:
  lui $8, 0x1001 # pega parte da tela
  ori $9, $0, 0xff00 # assicua a cor
  addi $10, $0, 32
for:
  beq $10, $0, fim
  sw $9, 0($8)
  addi $8, $8, 4
  addi $10, $10, -1
  j for
   
fim:
  lui $8, 0x1001
  addi $10, $0, 32
  
for2:
  beq $10, $0, fim2
  sw $9, 1920($8)
  addi $8, $8, 4
  addi $10, $10, -1
  j for2
  
fim2: 
  lui $8, 0x1001
  addi $10, $0, 16
for3:
  beq $10, $0, fim3
  sw $9, 0($8)
  addi $8, $8, 128
  addi $10, $10, -1
  j for3
fim3:  
  addi $2, $0, 10
  syscall
 
  