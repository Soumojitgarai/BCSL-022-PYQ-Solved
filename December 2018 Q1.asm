.model small
.stack 100h

.data
    value db 51h    ;Binary of 51h is 01010001
.code
    main proc
        mov ax,@data
        mov ds,ax
        mov al,value
        add al,2
        mov value,al;Store the value back in memory as per Question said
        mov ah,4ch
        int 21h
    main endp
end main