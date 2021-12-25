%include "io.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    xor eax, eax
    
    XOR     EDX,EDX

    LEA     ESI, [a]
    MOV     ECX, 8


next:
    MOV     AL,[ESI]
    CMP     AL, 0
    JZ     summ   
next1:      
    INC     ESI
    LOOP    next
    JMP     quit    
summ:
    INC     DL
    JMP     next1
    
quit: 
    PRINT_UDEC  1,DL    
    
    
    
    ret
    
    
    
section .data
a: DB 0, 5, 3, 2, 0, 8, 2, 2