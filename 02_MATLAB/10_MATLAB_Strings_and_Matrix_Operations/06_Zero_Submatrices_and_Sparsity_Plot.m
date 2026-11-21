%% Question 6: Create A=ones(20), replace A(6:15,6:15) with zeros,view nonzero entries, then zero the top-right and bottom-left 5x5 blocks.
A = ones(20);
A(6:15, 6:15) = 0;
figure;
spy(A);
title('Non-zero entries after central 10x10 block is zeroed');
A(1:5, 16:20) = 0;  % top-right 5x5 block
A(16:20, 1:5) = 0;  % bottom-left 5x5 block
figure;
spy(A);
title('Non-zero entries after all three blocks are zeroed');
