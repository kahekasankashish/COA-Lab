%% COA Lab - Assignment 07, Section III
% Demonstration of mathematical, rounding, and complex-number functions.

x = [1 4 9];
exponentialValues = exp(x)
naturalLogValues = log(x)
commonLogValues = log10(x)
squareRootValues = sqrt(x)
realCubeRoots = nthroot([-8 0 27], 3)
baseTwoLogs = log2([2 4 8])

z = complex([3 4], [4 3]);
absoluteValues = abs(z)
complexValues = complex([1 2], [3 4])
imaginaryParts = imag(z)
realParts = real(z)

roundTowardZero = fix([-2.8 -1.2 1.2 2.8])
roundDown = floor([-2.8 -1.2 1.2 2.8])
roundUp = ceil([-2.8 -1.2 1.2 2.8])

moduloResults = mod([-7 7], 3)
roundedValues = round([1.234 2.678], 2)
remainderResults = rem([-7 7], 3)
signValues = sign([-10 0 25])
