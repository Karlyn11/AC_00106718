org 	100h

	section	.text


	mov 	DX, msg1
	mov     AH, 09h
        int 21h

	mov 	BP, frase
	xor     SI, SI 

        while:  
        mov     AH, 01h
        int     21h         
        cmp     AL, 0x0D        
        je      exit           
        mov     [BP+SI], AL   	
        inc     SI              
        jmp     while

        exit:
	mov 	byte [BP+SI], "$"	

       lea     si, frase     
       lea     di, clave    
       cmpsb       
        je     UsuarioBienvenida
        jne   Incorrecto
        
	
        mov     AH, 01h         
        int     21h

	int 	20h

	section	.data

msg1	db	"Ingrese su clave porfavor:", "$"
clave	db	"ALE11", "$"
inicio  db "Bienvenido", "$"
error  db "Incorrecto vuelva a digitar su clave", "$"

frase 	times 	20  	db	" " 	



Incorrecto:
    	mov 	DX, error
        mov     AH,09h
        int     21h 
        ret
UsuarioBienvenida:
    	mov 	DX, inicio
        mov     AH,09h
        int     21h 
        ret
         
        




        