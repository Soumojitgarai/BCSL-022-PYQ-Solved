
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

segment .data

  width: db 10 ; the width of the rectangle
  height: db 20 ; the height of the rectangle

segment .text
global main
main:
  mov al, width ; move the width to AL
  mov bl, height ; move the height to BL
  mul bl ; multiply AL and BL
  mov dx, ax ; move the product to DX

ret




