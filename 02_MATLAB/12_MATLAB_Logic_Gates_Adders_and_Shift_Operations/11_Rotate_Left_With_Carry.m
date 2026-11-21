%% COA Lab - Assignment 12, Q11
% Implement an 8-bit rotate-left-through-carry operation (RCL).The old MSB becomes the carry-out. The old carry-in enters the LSB.

value = input('Enter an unsigned 8-bit integer (0 to 255): ');
carryIn = input('Enter carry-in (0 or 1): ');

if ~isscalar(value) || value < 0 || value > 255 || fix(value) ~= value
    error('Value must be an integer from 0 through 255.');
end
if ~isscalar(carryIn) || ~ismember(carryIn, [0 1])
    error('Carry-in must be 0 or 1.');
end

carryOut = bitget(uint16(value), 8);
result = mod(value * 2, 256) + carryIn;

fprintf('Before rotate: %s\n', dec2bin(value, 8));
fprintf('After rotate : %s\n', dec2bin(result, 8));
fprintf('Carry-in     : %d\n', carryIn);
fprintf('Carry-out    : %d\n', carryOut);
