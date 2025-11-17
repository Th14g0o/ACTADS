# Modularização

```bash
jal
``` 
> jump and link, salta para o rotulo mas salva no registrador $31 o endereo da instrução que esta abaixo dela

```bash
jr 
```
> pula para algum registrador 

```bash
fat:  
  # conteudo
  jr $31 # pula para registrador
jal fat
# resto do codigo # endereço
jal fat
# resto do codigo # endereço
```

> parametros: registradores a0, a1, a2, a4 -> v0, v1

> recursividade tem uma pilha especifica para isso, para armazenar os registradores de endereço
 
> registradores s0-s7, devem ser preservados entre as rotinas. pode ser usado, a função pode usar, mas s0 - s7 devem ser preservados ao final.

> registrador tipo t0- t9, valores temporarios

# Jogo

## Primeiro momeno

> MMIO - Memory Mapped Input / Output

Tela:
[][][][][][][][]
[][][][][][][][]
[][][][][][][][]
[][][][][][][][]

> cada memoria vai sr uma unidade grafica. Coloca uma informação RGB e essa informação vai ascender um ponto da tela.

> esse metodo capota o simulador por ser um para 1.

Mamoria - 32bit
| - Primeira linha - |
|0x10010000[RGB] } UG -> R(0-f), G(0-f), B(0-f)
|          [   ]
|          [   ]
|          [   ]
|          [   ]
|          [   ]
|          [   ]
|          [   ]
| ------------------ |
|          [   ]

> uma unidade grafica pode ter n pixeis. a tela é que dita a resolução.

# Pratica

> Tool - bitmap display
pixel larguara - 
pixel altura -
largura  - 512  
Altura - 256 
> conect
