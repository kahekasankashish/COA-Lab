%% COA Lab - Assignment 07, Section I
% Demonstration of workspace, folder, file, and environment commands.

%% Workspace information
a = 10;
b = [1 2 3];
who
workspaceInfo = whos
currentFolder = pwd
computerInfo = computer
currentDate = date;       % Legacy command; datetime("today") is preferred.
currentDateTime = clock;  % Legacy command; datetime("now") is preferred.

%% Logical test and exponential function
values = [1 0 3];
allNonzero = all(values)
expValues = exp([0 1 2])

