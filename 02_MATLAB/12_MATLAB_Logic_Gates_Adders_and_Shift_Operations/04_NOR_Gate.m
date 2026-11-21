%% COA Lab - Assignment 12, Q4
% Implement the NOR logic gate.
% Truth table: Y = NOT (A OR B)

A = [0 0 1 1];
B = [0 1 0 1];
Y = ~(A | B);

disp(table(A', B', Y', 'VariableNames', {'A','B','Output'}));
