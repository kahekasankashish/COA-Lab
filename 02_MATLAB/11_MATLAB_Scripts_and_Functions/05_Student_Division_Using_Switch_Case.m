%% COA Lab - Assignment 11, Q5
% Input marks in five subjects, calculate the average, and print the division using switch-case only for the classification.
% Division rules from the question:
% Average >= 60: First; >=50 and <60: Second;
% >=30 and <50: Third; below 30: Fail.

marks = zeros(1, 5);
for k = 1:5
    marks(k) = input(sprintf('Enter marks for subject %d (0-100): ', k));
end

if any(marks < 0 | marks > 100)
    error('Marks must be between 0 and 100.');
end

average = mean(marks);
fprintf('Average marks = %.2f\n', average);

switch true
    case average >= 60
        division = 'First Division';
    case average >= 50
        division = 'Second Division';
    case average >= 30
        division = 'Third Division';
    otherwise
        division = 'Fail';
end

fprintf('Result: %s\n', division);
