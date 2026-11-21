%% COA Lab - Assignment 09
% Formation of matrices and vectors using MATLAB and carrying out mathematical operations involving matrices, vectors, and scalars.


%% Q1. Compute 25/(25-1) and compare it with (1-1/25)^(-1).
q1_left = 25 / (25 - 1);
q1_right = (1 - 1/25)^(-1);
q1_results = [q1_left, q1_right];

%% Q2. Evaluate the expression involving sqrt(5).
q2 = (3 * (sqrt(5) - 1) / (sqrt(5) + 1)^2) - 1;

%% Q3. Calculate the area of a circle for r = pi^(1/3) - 1.
r = pi^(1/3) - 1;
area = pi * r^2;

%% Q4. Calculate e^3, ln(e^3), log10(e^3), and log10(10^5).
q4 = [exp(3), log(exp(3)), log10(exp(3)), log10(10^5)];

%% Q5. Calculate e^(pi*sqrt(163)).
q5 = exp(pi * sqrt(163));

%% Q6. Solve 3^x = 17 and verify by substitution.
x = log(17) / log(3);
verification = 3^x;

%% Q7. Calculate sin(pi/6), cos(pi), and tan(pi/2).
% tan(pi/2) is mathematically undefined. MATLAB returns a very large finite approximation because floating-point pi/2 is not exact.
q7_sine = sin(pi/6);
q7_cosine = cos(pi);
q7_tangent = tan(pi/2);
q7 = [q7_sine, q7_cosine, q7_tangent];

%% Q8. Calculate sin^2(pi/6) + cos^2(pi/6).
q8 = (sin(pi/6))^2 + (cos(pi/6))^2;

%% Q9. Evaluate cosh^2(x) - sinh^2(x) for x = 32*pi.
x_hyperbolic = 32 * pi;
q9_direct = (cosh(x_hyperbolic))^2 - (sinh(x_hyperbolic))^2;
q9_identity = 1;


%% Q10. Evaluate (1+3i)/(1-3i), as stated in the question.
q10_quotient = (1 + 3i) / (1 - 3i);

%% Q11. Evaluate exp(i*pi/4).
q11 = exp(1i * pi/4);

%% Q12. Evaluate exp(pi/2*i) and exp(pi/(2*i)).
q12 = [exp(pi/2 * 1i), exp(pi/(2 * 1i))];

%% Q13. Calculate y-coordinates for y = m*x + c.
m = 0.5;
c = -2;
x_line = [0, 1.5, 3, 4, 5, 7, 9, 10];
y_line = m * x_line + c;

%% Q14. Create t = 1,2,...,10 and compute x, y, and z.
t = 1:10;
x_vector = t .* sin(t);
y_vector = (t - 1) ./ (t + 1);
z_vector = sin(t.^2) ./ (t.^2);

%% Q15. Generate points on a circle of radius 2 and verify the radius.
theta = [0; pi/4; pi/2; 3*pi/4; pi; 5*pi/4];
r_constant = 2;
x_circle = r_constant * cos(theta);
y_circle = r_constant * sin(theta);
r_check = sqrt(x_circle.^2 + y_circle.^2);

%% Q16. Demonstrate syntax and uses of selected MATLAB functions.
% all(A)       - true if all elements are nonzero
% any(A)       - true if at least one element is nonzero
% exist(name)  - checks whether a variable, file, or folder exists
% isempty(A)   - true if A is empty
% isinf(A)     - identifies infinite elements
% isfinite(A)  - identifies finite elements
% isnan(A)     - identifies NaN elements
% find(X)      - returns indices of nonzero elements
% isreal(A)    - true if A has no imaginary component
% issparse(A)  - true if A is stored in sparse format

A = [1 0 3; 4 5 0];
function_demo = struct();
function_demo.all = all(A, "all");
function_demo.any = any(A, "all");
function_demo.exist = exist("A", "var");
function_demo.isempty = isempty([]);
function_demo.isinf = isinf([1 Inf -Inf]);
function_demo.isfinite = isfinite([1 Inf NaN]);
function_demo.isnan = isnan([1 NaN 3]);
function_demo.find = find(A);
function_demo.isreal = isreal([1 2 3]);
function_demo.issparse = issparse(sparse(A));
