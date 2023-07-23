.model small
.stack 100h

.data
    
.code
start:
    mov ax,@data
    mov ds,ax
    mov al,75h ;Binary of 75h is 01110101
    mov bl,0fh ;Binary of 0fh is 00001111
    and al,bl
    mov ah,4ch ;Halt !
    int 21h
end start