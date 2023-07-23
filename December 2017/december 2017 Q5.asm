
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

segment .data
  point1: dw 100, 200
  point2: dw 300, 400

segment .text
global main
main:
  mov ax, [point1 + 0] ; load x-coordinate of point1 into ax
  mov bx, [point2 + 0] ; load x-coordinate of point2 into bx
  sub ax, bx ; calculate x-distance
  imul ax, ax ; square x-distance

  mov cx, [point1 + 2] ; load y-coordinate of point1 into cx
  mov dx, [point2 + 2] ; load y-coordinate of point2 into dx
  sub cx, dx ; calculate y-distance
  imul cx, cx ; square y-distance

  add ax, cx ; add x-distance and y-distance

  mov [distance], ax ; store distance in memory

segment .bss
  distance: dw 0

ret




