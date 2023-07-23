;Write and run a program using 8086 assembly language which reads the byte
;values stored in four consecutive memory locations into AL, BL, AH and BH
;registers respectively. The program then finds the average of values stored in AX
;and BX registers. The result of the operation should be stored in DX register.

.model small
.stack 100h
.data
    
.code
    main proc
        mov al,[si] ;Load value form 1st memory location to al
        inc si      ;increment si (source index register) to next mem location
        mov bl,[si]
        inc si
        mov ah,[si]
        inc si
        mov bh,[si] ;28 STAB WOUNDS !!! 
        inc si      ;BUT YOU STABBED HIM, AGAIN and AGAIN and AGAIN
                    ;       https://youtu.be/INBT_KR8SvQ
        
        add ax,bx   ;ax=ax+bx
        shr ax,1    ;dividing ax by 2 (Equvalent to shifting right by 1)
        
        mov dx,ax
        
        mov ax,4ch
        int 21h
    main endp
end main