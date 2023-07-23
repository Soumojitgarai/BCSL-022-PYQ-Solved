
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

segment .data
  array: db 00h, 05h, 51h, 10h, 22h, 10h

segment .text
global main
main:
  mov si, 0 ; initialize SI to the first element of the array
  mov cl, 0 ; initialize CL to the offset of the first instance of '10h'

  loop:
    mov al, [array + si] ; load the byte at address array + si into AL
    cmp al, 10h ; compare AL to '10h'
    je found ; if AL is equal to '10h', jump to found
    inc si ; increment SI
    jmp loop ; loop back to the top of the loop

  found:
    mov ax, cx ; move the offset of the first instance of '10h' to AX

ret




