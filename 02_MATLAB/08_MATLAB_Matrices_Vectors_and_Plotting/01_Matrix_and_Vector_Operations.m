%% COA Lab - Assignment 08
% Demonstrate creation of vectors and matrices, indexing, concatenation,matrix arithmetic, transpose, and element-wise operations in MATLAB.

%% Scalar variables and basic vectors
x = 5;
y = 10;
z = 5;
x1 = 2;

a = [1 2 5 1];
b = [1 2 3; 5 1 4; 3 2 -1];

% Transpose of a matrix and a row vector
c = b';
d = a';

%% Vector generation
t = 1:10;
k = 2:-0.5:-1;

%% Matrix creation
B = [1:4; 5:8];
e = zeros(1,3);
f = ones(1,3);
g = rand(1,3);

%% Matrix indexing
A = [3 5 3; 6 8 2; 2 7 3];

elementAtLinearIndex6 = A(6);
elementAtRow3Column2 = A(3,2);
secondRow = A(2,:);
firstTwoRowsSecondColumn = A(1:2,2);

%% Concatenation
l = [1 2];
m = [4 5];
n = [0 0];

rowConcatenation1 = [x y];
rowConcatenation2 = [l m];
verticalConcatenation = [l; m];

%% Matrix addition, subtraction and multiplication
D = [1 2 3; 4 5 6; 7 8 9];
E = [3 5 2; 5 2 8; 3 6 9];

sumMatrix = D + E;
differenceMatrix = D - E;
productMatrix = D * E;
transposeMatrix = D';

%% Element-wise operations
F = [1 2 3; 5 1 4; 3 2 -1];
firstRow = F(1,:);
thirdRow = F(3,:);

elementwiseProduct = firstRow .* thirdRow;
elementwiseDivision = firstRow ./ thirdRow;

% Element-wise multiplication of scalar variables
scalarProduct = x .* y;

disp("Matrix and vector operations completed.");
