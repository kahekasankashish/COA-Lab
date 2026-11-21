%% COA Lab - Assignment 08
% Generate and plot the sine function and an exponentially damped sine function over the interval from 0 to 4*pi.

%% Sine function
x = linspace(0, 4*pi, 100);
y = sin(x);

figure;
plot(x, y);
title('This is the sine function');
xlabel('x (radians)');
ylabel('sin(x)');
grid on;

%% Exponentially damped sine function
% Element-wise multiplication (.*) is required because y and y1 are vectors
% of equal length. Matrix multiplication (*) is dimensionally unsuitable.
y1 = exp(-x/3);
y2 = y .* y1;

figure;
plot(x, y2);
title('Exponentially Damped Sine Function');
xlabel('x (radians)');
ylabel('sin(x) exp(-x/3)');
grid on;

%% Stem representation of the sine function
figure;
stem(x, y);
title('Stem Plot of the Sine Function');
xlabel('x (radians)');
ylabel('sin(x)');
grid on;
