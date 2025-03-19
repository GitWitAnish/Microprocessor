; Q1: Write an Assembly Program to multiply 05H and 06H. Store the result in F0F1H.

; Clear register A to store sum
MVI A, 00H  ; A ← 00H

; Load 06H into register C (counter)
MVI C, 06H  ; C ← 06H

; Load 05H into register B (multiplicand)
MVI B, 05H  ; B ← 05H

; Loop: Add B to A until counter becomes zero
ADD_LOOP:
    ADD B    ; A ← A + B
    DCR C    ; Decrement counter C
    JNZ ADD_LOOP  ; Repeat until C = 0

; Store the result at memory location F0F1H
STA F0F1H   ; (F0F1H) ← A

; Halt execution
HLT         ; Stop execution







; Q2: Write an Assembly Program to multiply data present in E000H and E001H. Store the result in C002H.

; Load first number from memory location E000H into register A
LDA E000H   ; A ← (E000H)

; Copy A to register B
MOV B, A    ; B ← A

; Load second number from memory location E001H into register A
LDA E001H   ; A ← (E001H)

; Clear register C (to store the result)
MVI C, 00H  ; C ← 00H

; Loop: Add B to C A times
MUL_LOOP:
    ADD B    ; A ← A + B
    DCR A    ; Decrement A
    JNZ MUL_LOOP  ; Repeat until A = 0

; Store the result at memory location C002H
STA C002H   ; (C002H) ← A

; Halt execution
HLT         ; Stop execution