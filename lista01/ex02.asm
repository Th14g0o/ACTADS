.text

main:
	addi $2, $0, 5
	syscall
	add $8, $0, $2
	
	mul $8, $8, $8 #8 receber o valor de $8 x $8
	
	addi $2, $0, 1
	add $4 ,$0, $8
	syscall