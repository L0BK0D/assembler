%include "io.inc"

section .text
global CMAIN
CMAIN:
   ;9 12 15
    MOV AL, 0x09
    MOV BL, 0x0C
    MOV CL, 0x0F
   ;Проверка если c>a+b
    MOV DL, AL
    ADD DL, BL
    CMP CL, DL
   ;Если больше, то тaкого треугольника не существует. Переходим на метку Q0.
    JA Q0
   ;Проверка если b>c+a
    MOV DL, AL
    ADD DL, CL
    CMP BL, DL
    JA Q0
   ;Проверка если a>c+b 
    MOV DL, BL
    ADD DL, CL
    CMP AL, DL
    JA Q0
   ;Если все длины сторон не больше суммы длин двух других, то такой треугольник существует. Выводим 1   
    PRINT_CHAR '1'
    JMP Q1 
Q0:     
   ;выводим 0 
    PRINT_CHAR '0' 
Q1:       
    ret