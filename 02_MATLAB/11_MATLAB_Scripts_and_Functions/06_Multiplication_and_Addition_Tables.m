%% COA Lab - Assignment 11, Q6
% Print multiplication and addition tables for an input number.

n = input('Enter a number: ');

fprintf('\nMultiplication table of %g:\n', n);
for k = 1:6
    fprintf('%g * %d = %g\n', n, k, n*k);
end

fprintf('\nAddition table (each sum equals %g):\n', n);
for k = 0:5
    fprintf('%d + %g = %g\n', k, n-k, n);
end
