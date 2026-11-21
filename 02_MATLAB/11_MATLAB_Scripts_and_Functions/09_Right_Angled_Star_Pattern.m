%% COA Lab - Assignment 11, Q9
% Print the following five-row pattern:
% *
% * *
% * * *
% * * * *
% * * * * *

for row = 1:5
    fprintf('%s\n', strtrim(sprintf('%s ', repmat('*', 1, row))));
end
