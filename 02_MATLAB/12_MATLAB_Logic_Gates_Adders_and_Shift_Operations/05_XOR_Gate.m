%% COA Lab - Assignment 12, Q5
% Implement the XOR logic gate.
% Truth table: Y = A XOR B

A = [0 0 1 1];
B = [0 1 0 1];
Y = xor(A, B);

disp(table(A', B', Y', 'VariableNames', {'A','B','Output'}));
