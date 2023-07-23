
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

segment .data

  odd_values: db 0 ; the first odd value

segment .text
global main
main:
  mov si, 0 ; initialize SI to the first element of odd_values
  mov al, 1 ; initialize AL to 1

  loop:
    mov [odd_values + si], al ; store AL in the first byte of odd_values
    add al, 2 ; increment AL by 2
    inc si ; increment SI
    cmp si, 5 ; compare SI to 5
    jne loop ; if SI is not equal to 5, loop back to the top of the loop

ret




