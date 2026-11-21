;Write an 8085 program to add two packed BCD numbers using DAA and store the BCD result and carry separately at 2020H and 2021H.

MVI A,84H
MVI B,75H
ADD B
MVI C,00H
DAA
JNC LEBEL
INR C
LEBEL: STA 2020H
MOV A,C
STA 2021H
HLT
