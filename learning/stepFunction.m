function o = stepFunction(x)
    if x(1) >= 1
        out1 = 1;
    else
        out1 = 0;
    end
    
    if x(2) >= 1
        out2 = 1;
    else
        out2 = 0;
    end
    [out1, out2]
end