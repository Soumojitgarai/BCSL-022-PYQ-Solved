
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV BX, 0000H ; initialize BX to 0
MOV CX, 0005H ; initialize CX to 5
MOV SI, 0000H ; initialize SI to the first memory address

LOOP:
MOV AL, [SI] ; move the byte at address SI to AL
ADD BX, AL ; add AL to BX
INC SI ; increment SI
LOOP LOOP ; loop until CX is 0

MOV DL, BX ; move BX to DL
DIV CX ; divide BX by CX

HLT ; halt the program

ret




