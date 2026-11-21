%% COA Lab - Assignment 12, Q12
% Implement an 8-bit circular rotate-left operation (ROL).The old MSB wraps around and becomes the new LSB.

value = input('Enter an unsigned 8-bit integer (0 to 255): ');
if ~isscalar(value) || value < 0 || value > 255 || fix(value) ~= value
    error('Input must be an integer from 0 through 255.');
end

oldMostSignificantBit = bitget(uint16(value), 8);
result = mod(value * 2, 256) + oldMostSignificantBit;

fprintf('Before rotate: %s\n', dec2bin(value, 8));
fprintf('After rotate : %s\n', dec2bin(result, 8));
