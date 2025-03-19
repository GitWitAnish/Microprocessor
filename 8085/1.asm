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






; Q2: Write an Assembly Program to add data present in E000H and E001H. Store the result at D000H.

; Load the first number from memory location E000H into register A
LDA E000H   ; A ← (E000H)

; Move the value of A into register B
MOV B, A    ; B ← A

; Load the second number from memory location E001H into register A
LDA E001H   ; A ← (E001H)

; Add register B to register A
ADD B       ; A ← A + B

; Store the result at memory location D000H
STA D000H   ; (D000H) ← A

; Halt execution
HLT         ; Stop execution