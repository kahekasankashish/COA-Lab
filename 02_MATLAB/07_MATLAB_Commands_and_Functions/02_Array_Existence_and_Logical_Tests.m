%% COA Lab - Assignment 07, Section II
% Demonstration of array tests and existence-checking functions.

A = [1 0 3; 4 5 0];
allElementsNonzero = all(A, "all")
anyElementNonzero = any(A, "all")

% exist returns a numeric code describing the item found.
existResult = exist("A", "var")
emptyCheck = isempty([])
infiniteCheck = isinf([1 Inf -Inf])
finiteCheck = isfinite([1 Inf NaN])
nanCheck = isnan([1 NaN 3])

% find returns linear indices by default.
nonzeroIndices = find(A)
[rowIndices, columnIndices, nonzeroValues] = find(A)

realCheck = isreal([1 2 3])
complexCheck = isreal([1 + 2i, 3])
sparseCheck = issparse(sparse(A))
