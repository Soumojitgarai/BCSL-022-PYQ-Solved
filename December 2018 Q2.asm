.model small
.stack 100h
.data
    
.code
    main proc
        mov ax,@data
        mov ds,ax
        mov al,0CAh ;move 11001010 into al
        mov bl,0C8h ;move 11001000 into bl
        cmp al,bl
        jg clear_bl ;jump if al>bl
        xor al,al   ;if al<bl clear al register
       clear_bl:
        xor bl,bl   ;clear bl register
        mov ah,4ch
        int 21h
    main endp
end main