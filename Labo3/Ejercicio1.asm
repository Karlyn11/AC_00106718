org     100h

   section .text

MOV AX,0d
ADD AX,0d
ADD AX,1d
ADD AX,0d
ADD AX,6d
ADD AX,7d
ADD AX,1d
ADD AX,8d
MOV BX,8d
DIV BX
Mov [20Ah],AX
int 20h
