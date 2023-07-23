
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

segment .data

  number1: db 10
  number2: db 20
  number3: db 30

segment .text
global main
main:
  mov ax, number1 ; move the first number to AX
  add ax, number2 ; add the second number to AX
  add ax, number3 ; add the third number to AX
  mov cx, ax ; move the sum to CX
  mov ax, 3 ; move the number of numbers to AX
  div cx ; divide the sum by the number of numbers

ret




