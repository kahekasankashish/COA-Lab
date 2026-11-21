%% COA Lab - Assignment 11, Q4
% Input a number and check whether it is prime.

n = input('Enter an integer: ');

if n <= 1 || fix(n) ~= n
    isPrime = false;
else
    isPrime = true;
    for divisor = 2:floor(sqrt(n))
        if mod(n, divisor) == 0
            isPrime = false;
            break;
        end
    end
end

if isPrime
    fprintf('%d is a prime number.\n', n);
else
    fprintf('%g is not a prime number.\n', n);
end
