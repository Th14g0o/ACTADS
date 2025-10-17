# Laço

![diagrama](diagramaExemplo.PNG)

```bash
addi $9, $0, $10
addi $8, $0, 1
test: beq $9, $8, fimfor
# print for
addi $8, $8, 1
j test
forend:
```