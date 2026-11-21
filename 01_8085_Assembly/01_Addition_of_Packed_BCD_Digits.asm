;Write an 8085 program to add the two decimal digits stored in the higher and lower nibbles of the byte at 2020H and store the result at 2050H.

LDA 2020H
MOV B,A
ANI 0FH
MOV C,A
MOV A,B
RLC
RLC
RLC
RLC
ANI 0FH
ADD C
STA 2050H
HLT
