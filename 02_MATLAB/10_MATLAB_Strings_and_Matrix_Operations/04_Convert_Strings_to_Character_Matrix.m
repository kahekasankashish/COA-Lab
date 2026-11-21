%% Question 4: Use char to convert strings to a character matrix.
names = ["Kashish", "Tania", "Jeeya", "Vaibhav", "Riya"];
characterMatrix = char(names);
disp(characterMatrix);
% char pads shorter names with spaces to make a rectangular matrix.
