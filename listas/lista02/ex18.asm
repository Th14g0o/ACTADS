.text

main:
  addi $2, $0, 5
  syscall
  add $8, $0, $2
 
  # $9 = quo
  # $15 = resto
  # $11 = multiplicador = 1
  # $12 = 10
  # $13 = base =2
  # $14 = binario fake
  
  addi $12, $0, 10
  addi $11, $0, 1
  addi $13, $0, 2
  addi $14, $0, 0 # inicia com zero
  add $9, $0, $8 # quo inicial = numero
  
  #=================== 1
  div $9, $13 # divide o quaociente por 2( na primeira quo = numero)
  mfhi $15 # quo % 2, resto
  mflo $9 # guarda em 9 o novo quociente
  mul $15, $15, $11 # multiplica o resto pelo multiplicador
  
  add $14, $14, $15 # atualiza o binario fake
  
  mul $11, $11, $12 # atualiza o multiplicador multiplicando ele po 10
  
  #=================== 2
  div $9, $13
  mfhi $15 # quo % 2
  mflo $9
  mul $15, $15, $11
  
  add $14, $14, $15
  
  mul $11, $11, $12
  
  #=================== 3
  div $9, $13
  mfhi $15 # quo % 2
  mflo $9
  mul $15, $15, $11
  
  add $14, $14, $15
  
  mul $11, $11, $12
  
  #=================== 4
  div $9, $13
  mfhi $15 # quo % 2
  mflo $9
  mul $15, $15, $11
  
  add $14, $14, $15
  
  mul $11, $11, $12
  
  #=================== 5
  div $9, $13
  mfhi $15 # quo % 2
  mflo $9
  mul $15, $15, $11
  
  add $14, $14, $15
  
  mul $11, $11, $12
  
  #=================== 6
  div $9, $13
  mfhi $15 # quo % 2
  mflo $9
  mul $15, $15, $11
  
  add $14, $14, $15
  
  mul $11, $11, $12
  
  #=================== 7
  div $9, $13
  mfhi $15 # quo % 2
  mflo $9
  mul $15, $15, $11
  
  add $14, $14, $15
  
  mul $11, $11, $12
  
  #=================== 8
  div $9, $13
  mfhi $15 # quo % 2
  mflo $9
  mul $15, $15, $11
  
  add $14, $14, $15
  
  mul $11, $11, $12
  
  #=================== 9
  div $9, $13
  mfhi $15 # quo % 2
  mflo $9
  mul $15, $15, $11
  
  add $14, $14, $15
  
  mul $11, $11, $12
  
  #=================== 10 bits
  div $9, $13
  mfhi $15 # quo % 2
  mflo $9
  mul $15, $15, $11
  
  add $14, $14, $15
  
  mul $11, $11, $12
  
  # imprime binario fake
  add $4, $0, $14
  addi $2, $0, 1
  syscall
  
 
  
  
  