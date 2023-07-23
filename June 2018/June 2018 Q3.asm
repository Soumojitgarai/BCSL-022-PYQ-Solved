;Write and run a program using 8086 assembly language that multiplies the
;values stored in two consecutive byte locations. The result is left in AH register.


.model small
.stack 100h

.code

.data
    main proc
        mov al,[si]
        inc si
        mov bl,[si]
        inc si
        
        mul bl      ;Multiply with BL with AL and store back to AL
        mov ah,al
        
        mov ah,4ch
        int 21h
    main endp
end main