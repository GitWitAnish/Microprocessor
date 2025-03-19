; Q1: Write an Assembly Program to add 03H and 05H in 8085 microprocessor.

; Load the first number (03H) into register A
MVI A, 03H  ; A ← 03H

; Load the second number (05H) into register B
MVI B, 05H  ; B ← 05H

; Add register B to register A
ADD B       ; A ← A + B

; Store the result at memory location D000H
STA D000H   ; (D000H) ← A

; Halt execution
HLT         ; Stop execution