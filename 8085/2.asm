; Q1: Write an Assembly Program to subtract 07H and 02H.

; Load the first number (07H) into register A
MVI A, 07H  ; A ← 07H

; Load the second number (02H) into register B
MVI B, 02H  ; B ← 02H

; Subtract register B from register A
SUB B       ; A ← A - B

; Store the result at memory location D000H
STA D000H   ; (D000H) ← A

; Halt execution
HLT         ; Stop execution





