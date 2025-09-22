.text

main:
  addi $2, $0, 5 # no registrador 2($v0) adicone 5, code da operação no $v0
  syscall
  add $8, $0, $2
  
  add $9, $8, $8
  
  addi $2, $0, 1 # no registrador 2($v0) adicone 1, code da operação no $v0
  add $4, $0, $9 # em $a0($4) tem que ter o integer a ser printado
  syscall
  
  