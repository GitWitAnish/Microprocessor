; Q1: Write an Assembly Program to find the 2’s complement of a number stored at 2001H.

; Load data from memory location 2001H into register A
LDA 2001H   ; A ← (2001H)

; Complement the value in A (1’s complement)
CMA         ; A ← NOT A

; Add 1 to get 2’s complement
ADI 01H     ; A ← A + 1

; Store the result at memory location 2002H
STA 2002H   ; (2002H) ← A

; Halt execution
HLT         ; Stop execution