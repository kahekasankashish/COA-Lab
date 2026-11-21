%% COA Lab - Assignment 12, Q6
% Implement a half-adder.
% Sum = A XOR B; Carry = A AND B.

A = [0 0 1 1];
B = [0 1 0 1];

Sum = xor(A, B);
Carry = A & B;

disp(table(A', B', Sum', Carry', ...
    'VariableNames', {'A','B','Sum','Carry'}));
