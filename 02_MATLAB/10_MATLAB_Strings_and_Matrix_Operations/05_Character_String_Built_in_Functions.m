%% Question 5: Give syntax, use, and examples for 15 built-in functions.

%% i. abs(S): numeric character codes
absResult = abs('ABC'); % [65 66 67]
%% ii. blanks(n): n spaces
blanksResult = ['A', blanks(3), 'B'];
%% iii. deblank(S): remove trailing whitespace
deblankResult = deblank('Hi   ');
%% iv. eval(expression): evaluate an expression (only trusted literals)
eval('x = 5;');
evalResult = x;
%% v. findstr(s1,s2): substring indices (legacy function)
% strfind is the recommended modern equivalent.
findstrResult = strfind('apple', 'p'); % [2 3]
%% vi. int2str(n): integer to character array
int2strResult = int2str(10);
%% vii. ischar(S): check character-array type
ischarResult = ischar('Hi');
%% viii. isletter(S): test alphabetic characters
isletterResult = isletter('A1');
%% ix. lower(S): lowercase letters
lowerResult = lower('MATLAB');
%% x. mat2str(A): matrix to character representation
mat2strResult = mat2str([1 2]);
%% xi. num2str(n): number to character representation
num2strResult = num2str(pi, 3);
%% xii. strcmp(s1,s2): exact case-sensitive comparison
strcmpResult = strcmp('Hi', 'hi');
%% xiii. strncmp(s1,s2,n): compare first n characters
strncmpResult = strncmp('abc', 'abd', 2);
%% xiv. strcat(s1,s2): concatenate character arrays
strcatResult = strcat('Hello', 'World');
%% xv. upper(S): uppercase letters
upperResult = upper('hi');
