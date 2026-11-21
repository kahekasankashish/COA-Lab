%% COA Lab - Assignment 11, Q2
% Input the age of a person and check whether they can vote.

age = input('Enter your age: ');

if age >= 18
    disp('Eligible to vote.');
elseif age >= 0
    disp('Not eligible to vote.');
else
    disp('Invalid age.');
end
