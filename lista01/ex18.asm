.text

# objetivo: x-(x*sinal_x) + y-(y*sinal_y)
main:
  addi $2, $0, 5
  syscall
  add $8, $0, $2
  
  addi $2, $0, 5
  syscall
  add $9, $0, $2
  
  sub $10, $8, $9
  srl $10, $10, 31 # sinal de $8
 
  sub $11, $9, $8
  srl $11, $11, 31 # sinal de $9
  
  # determina se deve ser feito a inversão
  # so deve ocorrer inversão se os numeros forem diferetentes
  # ou seja tiver um maior que o outor
  # se forem iguais os sinais serão 0 e eu preciso manter esse 0
  # para consiguir identificar que o numero exibido vai vir de uma numero dobrado
  # se forem diferentes vai ter um 1, esse 1 vai ser o menor
  # vou inverter ele para que eu consiga manter ele na formula que consegui pensar
  sub $15, $10, $11
  mul $15, $15, $15
  
  # inverte 0 por 1 e 1 por 0 para poder exibir o menor
  sub $10, $10, $15
  mul $10, $10, $10
  sub $11, $11, $15
  mul $11, $11, $11
  
  # multiplicando o numero pelo seu sinal invertido
  # o resultado sera usado na subtração com o numero original
  mul $12, $8, $10 
  mul $13, $9, $11 
  
  # determinando fator para no caso de serem iguais
  # iguais a soma dos 2 é 0
  # diferentes 1
  # subtrias -2 dois deles fica, no caso de serem iguais, -2 e no caso de serem
  # diferentes -1
  # esse  para dividir no final. Se tiver um menor so vou dividir uma
  # se forem iguais, esntão divido por 2
  add $14, $11, $10
  sub $14, $14, 2
  mul $14, $14, -1
  
  # x, y se x - y for maior que 0 então o sinal de vai ser 0, 
  # o que multiplicando por ele mesmo da 0, (x*0=0), se o sinal não fosse infertido ele ia se continuar x - (x*0) = x
  # mas como os sinais são invertidos no caso de x e y serem difretenes o sinal do maior vira 1, logo x-(x*1)= 0
  # eu somar x-(x*sina_x) + y-(y*sina_y) vai ficar o o menor ou o dobro(se x e y forem iguais)
  sub $12, $9, $12
  sub $13, $8, $13
  add $4, $12, $13
  
  # eu divido o valor menor ou dobro pelo resutado fator de serem iguais
  div $4, $14
  mflo $4
  
  addi $2, $0, 1
  syscall 