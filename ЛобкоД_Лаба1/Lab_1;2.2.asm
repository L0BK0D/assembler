%include "io.inc"
;a*b-c
;3 -22 1
;ОТВЕТ: -67
;8 бит    
;дополнительный код
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;write your code here
    FLD   DWORD [a]
    FLD   DWORD [b]
    FMUL
    FLD   DWORD [c]
    FSUB
    FST   DWORD [r]
    ret
       
section .data
a:  DD  0x40400000
b:  DD  0xC1B00000
c:  DD  0x3F800000
r:  DD  0x00000000