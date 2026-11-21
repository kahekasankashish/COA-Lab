%% COA Lab - Assignment 11, Q8
% Find the factorial of a nonnegative integer using recursion.

n = input('Enter a nonnegative integer: ');
if n < 0 || fix(n) ~= n
    error('Please enter a nonnegative integer.');
end

result = factorialRecursive(n);
fprintf('%d! = %.0f\n', n, result);

function value = factorialRecursive(n)
    if n == 0 || n == 1
        value = 1;
    else
        value = n * factorialRecursive(n - 1);
    end
end
