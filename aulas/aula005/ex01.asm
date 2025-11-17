.text
main:
  lui $8, 0x1001 # pega parte da tela
  ori $9, $0, 0xff00 # assicua a cor
  sw $9, 0($8) # pinta, salva na memoria
  sll $9, $9, 8 # descloca para esquerda e pega o vermelho RGB, R<-G
                # $9 - 00ff0000
  sw $9, 4($8)
  
  addi $2, $0, 10
  syscall
  