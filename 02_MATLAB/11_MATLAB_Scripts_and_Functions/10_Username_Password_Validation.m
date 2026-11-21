%% COA Lab - Assignment 11, Q10
% Input username and password and allow at most three attempts.

validUsername = "student";
validPassword = "matlab123";
authenticated = false;

for attempt = 1:3
    username = string(input('Enter username: ', 's'));
    password = string(input('Enter password: ', 's'));

    if username == validUsername && password == validPassword
        disp('Login successful.');
        authenticated = true;
        break;
    else
        remaining = 3 - attempt;
        if remaining > 0
            fprintf('Incorrect username or password. %d attempt(s) remaining.\n', remaining);
        end
    end
end

if ~authenticated
    disp('Access denied. Maximum number of attempts reached.');
end
