
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

segment .data

  al: db 01001100b ; the value of AL register
  bl: db 11110000b ; the value of BL register

segment .text
global main
main:
  mov al, al ; copy AL to AL
  and al, bl ; clear lower 4 bits of AL

ret




