
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

segment .data

segment .text
global main
main:
  mov al, 01010010b ; load AL register with 01010010b
  mov bl, al ; copy AL register to BL register
  and bl, 0fh ; mask out the upper 4 bits of BL register
  mov dl, al ; copy AL register to DL register
  and dl, 0f0h ; mask out the lower 4 bits of DL register
  add bl, dl ; add BL and DL registers
  mov al, bl ; move the sum of BL and DL registers to AL register

ret




