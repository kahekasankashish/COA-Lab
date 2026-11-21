%% COA Lab - Assignment 11, Q3
% Find the greatest among three unequal numbers.

a = input('Enter the first number: ');
b = input('Enter the second number: ');
c = input('Enter the third number: ');

if a > b && a > c
    greatest = a;
elseif b > a && b > c
    greatest = b;
else
    greatest = c;
end

fprintf('Greatest number = %g\n', greatest);
