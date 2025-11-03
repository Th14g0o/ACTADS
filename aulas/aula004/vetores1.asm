# int a=32, b=37, c=2, d=3, e=1
.data
.word 32 # 32 bits, 0x10010000
.word 37 # 0x10010004
.word 2  # 0x10010008
.word 3  # 0x1001000c
.word 1  # 0x10010010

.text
main:
  addi $2, $0, 5
  syscall
  
  lui $8, 0x1001 # pega esse valor e desloca 16 bits para esquerda, $8<=0x10010000
  # tranforma o 8 no endereçõ de memoria
  sw $2, 0($8) # sobrepoe o valor que esta na memoria
  sw $2, 4($8) # no execute mudou o +4, parece indice
  
  lw $4, 12($8) # 12 é o c, no indice
  addi $2, $0, 1
  syscall
  
  addi $2, $0, 10
  syscall
