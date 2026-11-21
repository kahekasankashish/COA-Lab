function lock_demo()
% Demonstrates mlock inside a function, as required by MATLAB.
mlock
disp("The current function is locked in memory.");
end
