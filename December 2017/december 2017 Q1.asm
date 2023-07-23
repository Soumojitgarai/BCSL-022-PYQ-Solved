
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

segment .data

segment .text
global main
main:
  mov al, 01011010b ; load AL register with 01011010b
  mov bl, 00001111b ; load BL register with 00001111b
  and al, bl ; clear the upper four bits of AL register
  shl al, 4 ; left shift AL register by 4 bits

ret




