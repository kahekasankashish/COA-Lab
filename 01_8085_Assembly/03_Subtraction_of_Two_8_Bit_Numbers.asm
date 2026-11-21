;Write an 8085 program to subtract the contents of register B from register A and store the result at memory location 2020H.

MVI A,75H
MVI B,20H
SUB B
STA 2020H
HLT
