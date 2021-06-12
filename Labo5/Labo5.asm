org 100h

    section .text
    MOV SI, 5d
    MOV DI, 0d
    MOV byte [200h], 5d ;

        MOV AH, 0h
        MOV AL, 03h
        INT 10h
     
        MOV [200h],SI
        MOV DH,[200h]
        MOV DL, 5d
        MOV AH, 02h
        MOV BH, 0h
        INT 10h
     
        MOV AH, 09h
        MOV DX, nombre1
        INT 21h
        inc SI
       MOV [200h],SI
        MOV DH,[200h]
        MOV DL, 5d
        MOV AH, 02h
        MOV BH, 0h
        INT 10h
        MOV AH, 09h
        MOV DX, nombre2
        INT 21h
        inc SI
         MOV [200h],SI
        MOV DH,[200h]
        MOV DL, 5d
        MOV AH, 02h
        MOV BH, 0h
        INT 10h
        MOV AH, 09h
        MOV DX, nombre3
        INT 21h
        inc SI
       
  MOV [200h],SI
        MOV DH,[200h]
        MOV DL, 5d
        MOV AH, 02h
        MOV BH, 0h
        INT 10h


        MOV AH, 09h
        MOV DX, nombre4
        INT 21h
        inc SI
       

        MOV AH, 00h
        INT 16h
        int 20h

section .data

nombre1 DB "Karlyn$"
nombre2 DB "Alejandra$"
nombre3 DB "Mendez$"
nombre4 DB "Hernandez$"
