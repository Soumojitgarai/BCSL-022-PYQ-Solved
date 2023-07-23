;Write and run a program using 8086 assembly language that checks if the value
;stored in a byte memory location is less than, equal to or more than the value
;stored in the AL register. The program stores 0 in CL register, if value of the
;memory location is less than the value in AL; or stores 1 in CL register if value
;of the memory location is equal to the value in AL; or 2 if the value of the
;memory location is more than the value in the AL register   


.model small
.stack 100h
.data

.code
    main proc
        mov bl,[si]     ;Load value from the memory location into BL
        
                        
                        
        mov cl,0        ;initialize cl from 0
        cmp bl,al
        jae bl_greater  ;JAE = Jump Above or Equal
        mov cl,0        ;BL<AL
        jmp done               
        
        bl_greater:
            je EQUAL    ;Jump if equal BL==AL
            mov cl,2    ;BL>AL
        EQUAL:
            mov cl,1    ;BL==AL
        done:
            mov ah,4ch
            int 21h
    main endp
end main