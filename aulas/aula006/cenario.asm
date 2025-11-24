.text
main:
  lui $10, 0x1001
  addi $8, $0, 512
  ori $5, $0, 0xffff # fim do range
  sll $5, $5, 4
  ori $5, $5, 0xf # mais vermelho
  addi $2, $0, 42 # gera aleatorio em range de um  $4 valor de inicio $5 fim
for1: 
  beq $8, $0, fimCena
  
  addi $4, $0, 0 # inicio do range, e retorna o valor aleatorio
  syscall
  
  sw $4, 0($10)
  sw $4, 2048($10) # shadow copy. desenha fora da tela
  
  addi $10, $10, 4
  addi $8, $8, -1
  j for1
fimCena:
  lui $10, 0x1001
  
  ori $9,$0, 0xffff
  sll $9, $9, 8
  ori $9, $9, 0xff 
  addi $12, $0, 511

  sw $9, 0($10)
for2:
  beq $12, $0, parou
  jal timer
  sw $9, 4($10)
  
  lw $11, 2048($10)
  sw $11, 0($10)

  addi $10, $10, 4
  addi $12, $12, -1
  j for2

parou:
  addi $2, $0, 10
  syscall
  
timer:
  addi $15, $0, 20000
fortimer:
  beq $15, $0, fimtimer
  addi $15, $15, -1
  j fortimer
fimtimer:
  jr $31