;Write and run a program using 8086 assembly language that finds the difference
;between the byte values stored in two consecutive locations. The program then
;squares this difference and stores the result in DX register.

.model small
.stack 100h

.data
    
.code
    main proc
      mov ax,@data
      mov ds,ax
      mov al,75h
      mov bl,10h
      sub al,bl
      mov ah,0  ;prepare AL for multiplication by clearing AH
      mul al    ;AX=ALxAL
      mov dx,ax 
      mov ah,4ch
      int 21h 
    main endp
end main