```bash
.text # Explicação disso vai vir depois. MAs é uma diretriz

# o registrador $0 feralmente é aterrado, no simulador pode receber valor, mas por enquanto trataremos como 0

addi $8, $0, 5  # somando constantes, 0 + 5
addi $9, $0, 6  # somando constantes, 0 + 6
add $10, $8, $9 # somando registrador, 5 + 6
```