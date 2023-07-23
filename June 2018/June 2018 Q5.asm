;Write and run a program using 8086 assembly language that interchanges the
;values stored in AL register with a byte value stored in the memory. The
;program then adds DH register to AL register. The result of this addition should
;be left in AL register. Make and state suitable assumptions, if any

.model small
.stack 100h
.data
    
.code
    main proc
        mov bl,[si]
        xchg al,bl
        
        add al,dh
        mov ah,4ch
        int 
    main endp
end main