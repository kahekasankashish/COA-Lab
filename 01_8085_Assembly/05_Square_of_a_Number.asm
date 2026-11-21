;Write an 8085 program to calculate the square of the number stored at 2050H using repeated addition and store the 8-bit result at 3050H. The zero case is handled explicitly. Results are modulo 256.

LXI H,2050H
MOV B,M
MVI A,00H
MOV C,B
ORA C
JZ ZERO
LOOP: ADD M
DCR B
JNZ LOOP
STA 3050H
HLT

ZERO: MVI A,00H
STA 3050H
HLT
