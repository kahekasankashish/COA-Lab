;Write an 8085 program to generate and store a Fibonacci sequence beginning with 0 and 1, using sixteen loop iterations.

LXI H,2050H
MVI C,10H
MVI B,00H
MVI D,01H
MOV M,B
INX H
MOV M,D
L: MOV A,B
ADD D
MOV B,D
MOV D,A
INX H
MOV M,A
DCR C
JNZ L
HLT
