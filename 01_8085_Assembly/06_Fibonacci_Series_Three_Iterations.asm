;Write an 8085 program to generate and store a Fibonacci sequence beginning with 0 and 1, using three loop iterations.The program stores the initial two terms and then generates three additional terms.
;Output: 00H, 01H, 01H, 02H, 03H at memory locations 2050H through 2054H.

LXI H,2050H    ; HL points to the first output location
MVI C,03H      ; Generate three terms after the initial two
MVI B,00H      ; First Fibonacci term
MVI D,01H      ; Second Fibonacci term

MOV M,B        ; Store 0
INX H
MOV M,D        ; Store 1

FIB_LOOP: MOV A,B
           ADD D          ; A = previous term + current term
           MOV B,D        ; Shift current term to previous
           MOV D,A        ; Store newly generated term
           INX H
           MOV M,A        ; Store the new term
           DCR C
           JNZ FIB_LOOP

HLT
