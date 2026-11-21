%% COA Lab - Assignment 12, Q7
% Implement a full-adder with inputs A, B and Carry-in (Cin).
% Sum = A XOR B XOR Cin.
% Carry-out = (A AND B) OR (A AND Cin) OR (B AND Cin).

[A, B, Cin] = ndgrid([0 1], [0 1], [0 1]);
A = A(:);
B = B(:);
Cin = Cin(:);

Sum = xor(xor(A, B), Cin);
Cout = (A & B) | (A & Cin) | (B & Cin);

disp(table(A, B, Cin, Sum, Cout, ...
    'VariableNames', {'A','B','Cin','Sum','Cout'}));
