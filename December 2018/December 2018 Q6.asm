.model small
.stack 100h

.data
    array db 29h, 32h, 35h, 39h, 21h
    result db 0 ;variable to store the result
.code
   start:
    mov ax,@data
    mov ds,ax
    mov cx,5 ;looping 5 times
    lea si,array
    mov al,[si] ;pointing SI to starting value
  search_loop:
    lodsb ;Load the byte at SI into AL
    cmp al,35h
    jg found ;jump if found
    loop search_loop
    mov al,0 ;if not found
  found:
    mov result,al
    
    mov ah,4ch; HALT !
    int 21h
end start