
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

segment .data
  
  value: db 0 ; the decimal value to be converted

segment .text
global main
main:
  mov al, value ; move the value to AL
  add al, 48 ; add 48 to AL to convert it to ASCII value
  
ret




