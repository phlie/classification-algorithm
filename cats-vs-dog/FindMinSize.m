% This algorithm finds the minimium number of of pictures below a current
% size. It can easily be modified to tell the lowest size or the max size

minWidth = 1000
minIndex = 1
countBellow = 0
for k = 1:12500
    if imageSizeCats(1, k) < 50
        disp(sprintf('The minimum width is now: %d', k + 1))
        countBellow = countBellow + 1;
    end
end