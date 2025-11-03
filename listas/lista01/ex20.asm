.text

main:
  addi $2, $0, 5
  syscall
  add $8, $0, $2 # ano
  
  addi $4, $0, 19
  div $8, $4
  mfhi $9 # a
  
  addi $4, $0, 100
  div $8, $4
  mflo $10 # b
  mfhi $11 # c
  
  addi $4, $0, 4
  div $10, $4
  mflo $12 # d
  mfhi $13 # e
  
  addi $4, $0, 25
  addi $14, $10, 8
  div $14, $4
  mflo $14 # f
  
  addi $4, $0, 3
  addi $15, $10, 1
  sub $15, $15, $14
  div $15, $4
  mflo $15 # g
  
  addi $4, $0, 30
  mul $16, $9, 19
  addi $16, $16, 15
  add $16, $16, $10
  sub $16, $16, $12
  sub $16, $16, $15
  div $16, $4
  mfhi $16 # h
  
  addi $4, $0, 4
  div $11, $4
  mflo $17 # i
  mfhi $18 # k
  
  addi $4, $0, 7
  mul $19, $13, 2 
  mul $20, $17, 2 
  add $19, $19, $20
  addi $19, $19, 32
  sub $19, $19, $16
  sub $19, $19, $18
  div $19, $4
  mfhi $19 # L
  
  addi $4, $0, 451
  mul $20, $16, 11 
  mul $21, $19, 22 
  add $20, $20, $21
  add $20, $20, $9
  div $20, $4
  mflo $20 # m
  
  addi $4, $0, 31
  mul $21, $20, -7 
  add $21, $19, $21
  add $21, $21, $16
  addi $21, $21, 114
  div $21, $4
  mflo $21 # MES
  mfhi $22 
  addi $22, $22, 1 # DIA
  
  # Exibindo
  addi $4, $0, 10
  div  $22, $4
  mflo $23
  mfhi $24
  div  $23, $4
  mfhi $23
  
  addi $2, $0, 1
  add $4, $0, $23
  syscall
  addi $2, $0, 1
  add $4, $0, $24
  syscall
  
  addi $2, $0, 11
  add $4, $0, '/'
  syscall
  
  addi $4, $0, 10
  div  $21, $4
  mflo $23
  mfhi $24
  div  $23, $4
  mfhi $23
  
  addi $2, $0, 1
  add $4, $0, $23
  syscall
  addi $2, $0, 1
  add $4, $0, $24
  syscall
  
  addi $2, $0, 11
  add $4, $0, '/'
  syscall
  
  addi $4, $0, 10
  div  $8, $4
  mflo $23
  mfhi $24
  
  div  $23, $4
  mflo $23
  mfhi $25
  
  div  $23, $4
  mflo $23
  mfhi $26
  
  div  $23, $4
  mfhi $23
  
  addi $2, $0, 1
  add $4, $0, $23
  syscall
  addi $2, $0, 1
  add $4, $0, $26
  syscall
  addi $2, $0, 1
  add $4, $0, $25
  syscall
  addi $2, $0, 1
  add $4, $0, $24
  syscall
  