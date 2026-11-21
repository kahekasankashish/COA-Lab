%% COA Lab - Assignment 12, Q10
% Implement a one-bit arithmetic right shift on an 8-bit two's-complement signed integer. The sign bit (MSB) is copied into the vacated MSB.

signedValue = input('Enter a signed 8-bit integer (-128 to 127): ');
if ~isscalar(signedValue) || signedValue < -128 || ...
        signedValue > 127 || fix(signedValue) ~= signedValue
    error('Input must be an integer from -128 through 127.');
end

% Convert signed value to its 8-bit two's-complement representation.
unsignedValue = mod(signedValue, 256);
bitsBefore = dec2bin(unsignedValue, 8);

% Arithmetic right shift: divide by two and round toward negative infinity.
result = floor(signedValue / 2);
resultUnsigned = mod(result, 256);
bitsAfter = dec2bin(resultUnsigned, 8);

fprintf('Before shift : %s (%d)\n', bitsBefore, signedValue);
fprintf('After shift  : %s (%d)\n', bitsAfter, result);
