%% COA Lab - Assignment 11, Q7
% Evaluate the cosine series using a finite number of terms.
% The question displays: cos(x) = 1 - x^2/2! + x^4/4! + ...
% The conventional cosine Taylor series alternates signs:
% cos(x) = sum((-1)^k * x^(2*k)/(2*k)!, k=0,...,N-1).
% Here, N is the number of terms requested by the user.

x = input('Enter x (in radians): ');
N = input('Enter the number of terms: ');

if N < 1 || fix(N) ~= N
    error('Number of terms must be a positive integer.');
end

cosApproximation = 0;
for k = 0:N-1
    cosApproximation = cosApproximation + ...
        ((-1)^k * x^(2*k) / factorial(2*k));
end

fprintf('Cosine approximation = %.12g\n', cosApproximation);
fprintf('MATLAB cos(x)         = %.12g\n', cos(x));
fprintf('Absolute error        = %.12g\n', abs(cosApproximation-cos(x)));
