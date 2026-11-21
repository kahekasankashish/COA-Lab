%% COA Lab - Assignment 12, Q1
% Implement the AND logic gate.
% Truth table: Y = A AND B

A = [0 0 1 1];
B = [0 1 0 1];
Y = A & B;

disp(table(A', B', Y', 'VariableNames', {'A','B','Output'}));
