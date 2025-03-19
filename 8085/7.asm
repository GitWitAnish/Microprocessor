; Q1: Write an Assembly Program to count the total number of 1's in a number stored at 2001H. Store the result in 2002H.

; Load data from memory location 2001H into register A
LDA 2001H   ; A ← (2001H)

; Initialize counter for 8 bits
MVI B, 08H  ; B ← 8

; Initialize count to 0
MVI C, 00H  ; C ← 0

COUNT_LOOP:
    RAL     ; Rotate left
    JNC SKIP  ; If carry = 1, increment count
    INR C   ; C ← C + 1

SKIP:
    DCR B   ; Decrement counter
    JNZ COUNT_LOOP  ; Repeat for 8 bits

; Store the result at memory location 2002H
STA 2002H   ; (2002H) ← C

; Halt execution
HLT         ; Stop execution