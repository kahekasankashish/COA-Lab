;Write an 8085 program to multiply two unsigned numbers using repeated addition and store the 8-bit product at 2020H. Inputs are the constants 04H and 15H. The zero multiplier case is handled explicitly.

MVI A,04H
MVI B,15H
MOV C,A
MVI A,00H
MOV D,C
ORA D
JZ ZERO
LOOP: ADD B
DCR C
JNZ LOOP
STA 2020H
HLT

ZERO: MVI A,00H
STA 2020H
HLT
