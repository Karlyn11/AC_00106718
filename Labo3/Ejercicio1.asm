org 	100h

	section	.text


    MOV byte [210h],0d
    MOV byte [211h],0d
    MOV byte [212h],1d
    MOV byte [213h],0d
    MOV byte [214h],6d
    MOV byte [215h],7d
    MOV byte [216h],1d
    MOV byte [217h],8d
    MOV AX,0d
    MOV SI,0d
    MOV BX,8d
    jmp iterando
    iterando:
    CMP SI,8d
    JE exit
    ADD AL,  [210h + SI]
    INC SI
    jmp iterando
    exit:
    DIV BX
    mov [20Ah],AX
    int 20h