;Write and run a program using 8086 assembly language which finds the sum
;and average of five consecutive byte numbers stored in the memory. You must
;use looping to write this program. The result must be stored in BX register (sum)
;and DL register (average)

.model small
.stack 100h
.data
    array db 10,20,30,40,50
    array_count equ 5
.code                 
    main proc 
        mov bx,0    ;clearing bx to store sum
        mov dl,0    ;clearing dl to store avg
        mov cx,array_count
        mov di,0    ;pointing di to starting of array
        
        SUM_LOOP:
            add bx,[di] ;adding array elements and storing back to BX
            inc di      ;increment to next element
            loop SUM_LOOP
        mov al,array_count
        div al       ;counting avg by diving al (count) with bx (sum)
        mov dl,al
        
        mov ah,4ch
        int 21h
    main endp
end main