%% COA Lab - Assignment 12, Q3
% Implement the NAND logic gate.
% Truth table: Y = NOT (A AND B)

A = [0 0 1 1];
B = [0 1 0 1];
Y = ~(A & B);

disp(table(A', B', Y', 'VariableNames', {'A','B','Output'}));
