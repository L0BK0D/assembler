%include "io.inc"
;a*b-c
;7 11 19
;ОТВЕТ: 58
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
a:  DD  0x40E00000
b:  DD  0x41300000
c:  DD  0x41980000
r:  DD  0x00000000