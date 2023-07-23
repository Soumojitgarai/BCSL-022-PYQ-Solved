
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

segment .data

  array1: db 1, 2, 3, 4, 5
  array2: db 6, 7, 8, 9, 10
  result: db 0, 0, 0, 0, 0

segment .text
global main
main:
  mov si, 0 ; initialize SI to the first element of array1
  mov di, 0 ; initialize SI to the first element of array2
  mov bp, 0 ; initialize BP to the first element of result

  loop:
    mov al, [array1 + si] ; load the first byte of array1 to AL
    add al, [array2 + di] ; add the first byte of array2 to AL
    mov [result + bp], al ; store the sum in the first byte of result
    inc si ; increment SI
    inc di ; increment DI
    inc bp ; increment BP
    cmp si, 5 ; compare SI to 5
    jne loop ; if SI is not equal to 5, loop back to the top of the loop

ret




