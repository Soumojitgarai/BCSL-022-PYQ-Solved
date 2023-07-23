
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

segment .data
  radius: db 5 ; the radius of the circle

segment .text
global main
main:
  mov al, radius ; move the radius to AL register
  mov ah, 0 ; initialize AH register to 0
  mul ah ; multiply AL and AH registers
  mov dx, ax ; move the product to DX register

ret




