;Write an 8085 program to find the smaller of the two numbers stored at 2050H and 2051H and store the result at 2052H.

LDA 2050H
MOV B,A
LDA 2051H
CMP B
JC L
MOV A,B
L: STA 2052H
HLT
