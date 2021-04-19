org     100h

section .text


mov byte [200h], "K"
mov byte [201h], "A"
mov byte [202h], "M"
mov byte [203h], "H"


;Direccionamiento Asoluto
mov AX,0000h
mov AL, [200h]

;Direccionamiento Relativo
mov BX, 201h
mov CL, [BX]

;Direccionamiento indirecto base mas indice 
mov BX, 202h
mov DL, [BX + DI]

;Direccionamiento relativo por registro
mov BX, 200h 
mov DI, [BX +3h]
int 20h