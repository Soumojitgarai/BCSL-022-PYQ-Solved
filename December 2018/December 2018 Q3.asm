.model small
.stack 100h

.data
    num1 db 10
    num2 db 20
.code
   start:
    mov ax,@data
    mov ds,ax
    mov al,[num1]
    mov ah,0        ;Clearing AH register
    add al,[num2]
    lahf            ;LAHF means "Load flags into AH register" 
    mov ah,4ch
    int 21h
end start