;Write an 8085 program to find the largest among N unsigned 8-bit numbers stored sequentially from 2101H, where N is stored at 2100H. Store the largest value at 2106H.
;Assumption: N is between 0 and 5 because the result location is 2106H and the input list starts at 2101H.
;If N = 0, the program stores 00H at 2106H (there is no input value to compare).

LXI H,2100H
MOV B,M          ; B = number of elements
MOV A,B
ORA A            ; Check whether N is zero
JZ EMPTY_LIST

INX H            ; Point to first number
MOV A,M          ; Initialize maximum with first number
DCR B            ; One element has already been processed
JZ STORE_MAX     ; If N = 1, no comparison is needed

CHECK_NEXT: INX H
            CMP M          ; Compare current maximum with next number
            JNC KEEP_MAX   ; Keep A if A >= M (unsigned comparison)
            MOV A,M        ; Otherwise, update maximum

KEEP_MAX:   DCR B
            JNZ CHECK_NEXT
            JMP STORE_MAX

EMPTY_LIST: MVI A,00H      ; Defined output for N = 0

STORE_MAX: STA 2106H
            HLT
