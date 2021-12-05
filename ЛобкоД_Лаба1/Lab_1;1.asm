%include "io.inc"

;a*b-c
;7 11 19
; ОТВЕТ: 58
;8 бит
;дополнительный код
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    ;write your code here
    ;переводим числа в шестнадцатиричную систему и записываем в регистрыЖ AL, BL, CL
    MOV   AL, 0x07
    MOV   BL, 0x0B
    MOV   CL, 0x13
    ;перемножаем AL и BL
    IMUL  BL
    ;вычитаем из AL CL
    SUB   AL, CL
    PRINT_DEC 1, AL
    NEWLINE
;a*b-c
;3 -22 1
;ОТВЕТ: -67
;8 бит    
;дополнительный код
    ;переводим числа в шестнадцатиричную систему и записываем в регистрыЖ AL, BL, CL
    MOV   AL, 0x03
    MOV   BL, 0xEA
    MOV   CL, 0x01
    ;перемножаем AL и BL
    IMUL  BL
    ;вычитаем из AL CL
    SUB   AL, CL    
    PRINT_DEC 1, AL
    ret
    
