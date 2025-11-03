.text # depois entederemos essa diretiz 


# o registrador $0 feralmente é aterrado, no simulador pode receber valor, mas por enquanto trataremos como 0

# depois entederemos essa diretiva main
main: addi $8, $0, 5  # somando constantes, 0 + 5
      addi $9, $0, 6  # somando constantes, 0 + 6
      add $10, $8, $9 # somando registrador, 5 + 6
      
      # Tarefinha enquanto Braulio foi beber agua
      addi $8, $0, 1
      addi $9, $0, 2
      addi $10, $0, 3
      addi $11, $0, 4
      
      add $20, $8, $9
      add $20, $20, $10
      add $20, $20, $11
      
      # Syscall
      #   ler 1 int
      addi $2, $0, 5 # serviço 5
      syscall 
      add $8, $0, $2
      
       #   ler 2 int
      addi $2, $0, 5 # serviço 5
      syscall 
      add $9, $0, $2
      
      #    imprime int
      add $4, $0, $2
      add $4, $0, $10
      addi $2, $0, 1 # serviço 1
      syscall
      
      #    imprime string
      addi $4, $0, '\n'
      addi $2, $0, 11 # serviço 11
      syscall
      
      #    imprime string
      addi $4, $0, 'A'
      addi $2, $0, 11 # serviço 11
      syscall
      
      