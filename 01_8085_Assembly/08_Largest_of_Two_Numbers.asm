;Write an 8085 program to find the larger of the two numbers stored at 2020H and 2021H and store the result at 2052H.

LDA 2020H
MOV B,A
LDA 2021H
CMP B
JNC L
MOV A,B
L: STA 2052H
HLT
