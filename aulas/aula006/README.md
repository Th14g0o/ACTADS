# Jogos
## Movimento

Consiste em apagar e desenhar tela para dar impressão pro usuario. Como o computador é rapido isso é posivel.

Problema: saber as cores anterios que estavam na tela.

Cores
r - red
g - green
o - orange
b - blue
p - preto
[r][g][o][b][b][ ][ ][ ]
[ ][ ][ ][ ][ ][ ][ ][ ]
[ ][ ][ ][ ][ ][ ][ ][ ]
[ ][ ][ ][ ][ ][ ][ ][ ]

Memoria
```
0x1001000 [r]
  1001004 [g]
        8 [p]
        c [b]
       10 [b] -> visão
        .
        .
        .
       80 [g]
       84 [r]
       88 [o]
       8x [b]
       90 [b] -> parte da memoria que tem salvo o cenario, shadow copy
```