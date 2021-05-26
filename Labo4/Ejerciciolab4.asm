org     100h


section .data
numeros db 1,2,3,4,5,6,7,8,9,10


section .text

MOV AX,0d
MOV SI,0d
MOV BX,2d
MOV byte [200h],0d
MOV byte [210h],0d
jmp iterando
iterando:
CMP SI,10d
JE exit

MOV AX, numeros[SI]
call funcionparofuncionimpar
INC SI
Jmp iterando

funcionparofuncionimpar:
MOV BX,2d
div BX
CMP DL,0d
JE funcionpar
CMP DL,1d
JE funcionimpar


funcionpar:
MOV BX,[200h]
MOV AX, numeros[SI]
MOV [300h + BX],AX
INC BX
MOV [200h],BX
RET

funcionimpar:
MOV BX,[210h]
MOV AX, numeros[SI]
MOV [320h + BX],AX
INC BX
MOV [210h],BX
RET


exit:

int 20h