%% COA Lab - Assignment 12, Q8
% Implement a one-bit logical right shift on an 8-bit unsigned value.
% A zero enters the most significant bit; the least significant bit is shifted out into the carry flag.

value = input('Enter an unsigned integer (0 to 255): ');
if ~isscalar(value) || value < 0 || value > 255 || fix(value) ~= value
    error('Input must be an integer from 0 through 255.');
end

bitsBefore = dec2bin(value, 8) - '0';
carryOut = bitand(uint16(value), uint16(1));
result = floor(value / 2);
bitsAfter = dec2bin(result, 8) - '0';

fprintf('Before shift : %s\n', char(bitsBefore + '0'));
fprintf('After shift  : %s\n', char(bitsAfter + '0'));
fprintf('Carry out    : %d\n', carryOut);
fprintf('Decimal result: %d\n', result);
