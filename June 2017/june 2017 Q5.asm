
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

segment .data

  data: db 27h ; the data to be interchanged

segment .text
global main
main:
  mov al, data ; move the data to AL

  and al, 0f0h ; mask out the lower four bits of AL
  shl al, 4 ; shift the masked value four bits to the left

  mov bl, data ; move the data to BL

  and bl, 0fh ; mask out the upper four bits of BL

  or al, bl ; combine the masked values of AL and BL

  mov data, al ; store the modified data back to the memory location

ret




