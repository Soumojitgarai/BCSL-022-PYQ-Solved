.model small
.stack 100h

.data
    value db 69h,96h,10h,20h
.code
   main proc
        mov ax,@data
        mov ds,ax
        mov al,value
        mov bl,value+1
        cmp al,bl
        jg check1   ; Jump if al>bl
        xchg al,bl  ; If al<bl
      check1:
        mov cl,value+2
        cmp al,cl
        jg check2   ;Jump if al>cl
        xchg al,cl  ;If al<cl
      check2:
        mov dl,value+3
        cmp al,dl
        jg ALL_YOU_HAD_TO_DO_FOLLOW_THE_DAMN_TRAIN_CJ
        xchg al,dl  ;if al<dl
      ALL_YOU_HAD_TO_DO_FOLLOW_THE_DAMN_TRAIN_CJ:
        mov ah,4ch  ;HALT
        int 21h
   main endp
end main
        