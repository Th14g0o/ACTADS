# Vetores

**O computador realiza tarefas em sequencias. Pode ser confundido com ao mesmo tempo por ser muito rapido.**

**Padrões foram criados no mips para armazenar determinado conteudo em determinada parte da memoria**
* 0x00400000
  * aqui ficam programs, tambem é chamado de .text
* 0x10010000
  * aqui é os dados, chamado de .data

lw(load world) - carrega da memoria pro registrador. da memoria para o registrador
```bash
lw $x, imm($y)
# x processador destino
# endereco = conteudo de $y somado ao imm
```

sw(save world) - salva na memoria. do registrador para a memoria  
```bash
sw $z, imm($k) # k = 1 - 31
# z processador fonte
# endereco = conteudo de $k somado ao imm
```