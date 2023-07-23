
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

segment .data

  array: db 55h, 25h, 00h, 10h, 00h

segment .text
global main
main:
  mov si, 0 ; initialize SI to the first element of array
  mov dl, -1 ; initialize DL to -1

  loop:
    mov al, [array + si] ; load the byte at address array + si to AL
    cmp al, 0 ; compare AL to 0
    je found ; if AL is equal to 0, jump to found label
    inc si ; increment SI
    jmp loop ; jump back to the top of the loop

  found:
    mov dl, si ; move the value of SI to DL

ret




