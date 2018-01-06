% This neural network detects straight lines in a 2x2 matrix where a
% straight line is two consecutive 1's in a diagonal, horizontal, or
% vertical arrangement
input =      [0 0 0 0; 0 0 0 1; 0 0 1 0; 0 1 0 0; 1 0 0 0;
              0 0 1 1; 0 1 0 1; 1 0 0 1; 0 1 1 0; 1 0 1 0;
              0 1 1 1; 1 1 1 0; 1 1 0 1; 1 0 1 1;
              1 1 1 1];
% If there is a line of length 2 or greater show the overlapping lines
linePositionAndOverlapOut = [0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0;
              0 0 1 1; 0 0 0 0; 0 0 0 0; 0 1 1 0; 0 0 0 0;
              0 1 1 2; 2 1 1 0; 1 2 0 1; 1 0 2 1;
              0 0 0 0];
% Tallies up the total line length, ignores solid textures
lengthOfLinesOut = [0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0;
               2 0 0 0; 0 0 0 0; 0 0 0 0; 2 0 0 0; 0 0 0 0;
              4 0 0 0; 4 0 0 0; 4 0 0 0; 4 0 0 0;
              0 0 0 0];

net1 = feedforwardnet(10);
net1 = train(net1,input,linePositionAndOverlapOut);
view(net1);
y1 = net1(input)
perf1 = perform(net1,y1,linePositionAndOverlapOut);

net2 = feedforwardnet(10);
net2 = train(net2,input,lengthOfLinesOut);
view(net2);
y2 = net2(input)
perf2 = perform(net2,y2,lengthOfLinesOut);