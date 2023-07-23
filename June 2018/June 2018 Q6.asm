;Write and run a program using 8086 assembly language that finds the first
;value that is more than the binary value 0000 0011 from the values stored in a
;byte array in the memory. For example, if 00h, 01h, 02h, 03h, 04h, 05h are
;stored in a memory array, then program should output 04h which is the first
;value that is more than 0000 0011 (binary)


.model small
.stack 100h
.data
    array db 00h, 01h, 02h, 03h, 04h, 05h
    array_size equ 6
.code
    main proc
        mov cx,array_size   ;Load the array elements(which is 6) to cx counter register
        mov al,03h          ; Hex of 0000 0011 is (03)hex
        
        mov di,0            ;positioning DI register to starting of array
        
      SEARCH_LOOP:
        cmp al,[di]
        ja FOUND           ;jump if above to FOUND
        inc di             ;increment DI
        loop SEARCH_LOOP   ;Loop until done
      FOUND:
        mov ah,4ch
        int 21h       
    main endp 
        
end main