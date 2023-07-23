;Write and run a program using 8086 assembly language that makes the upper
;four bits of AL register as 1111 using BL register. This is followed by a single bit
;left shift operation on AL register. You may assume that initially AL register
;contains 01011001 and BL register contains 10100000. The output of the
;operation should be left in AL register

.model small
.stack 100h
.data

.code
    main proc
        mov al,01011001b    ;loading the bin value for AL
        mov bl,10100000b    ;loading the bin value for BL
        
        and al,00001111b    ;clearing 4 upper bit of AL
        or al,11110000b     ; now AL is = 1111 1001
        shl al,1            ;Left Shift AL
    main endp
end main