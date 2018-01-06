% This Neural Network attempts to add two bits together and uses a Sum and
% Carry bit in its output

function out = adder()
   inputArray = [1 1; 0 1; 1 0; 0 0];
          % What we want the output to be
   realOutArray = [1 1; 1 0; 1 0; 0 0];
   % The weights of the output layer, column 1 is output neuron 1 
   %weights = [0.2 0.3; 0.1 .25];
   weights = rand(2, 2);

    % Loops through and trains the neural network
    for loopCount = 1:1000
        temp = randi(4);
        input = inputArray(temp, :);
        realOut = realOutArray(temp,:);
        %Transpose the inputs into a column and then multiply the weights
        outputAnalog = weights * input';
    
        % The activation function
        if outputAnalog(1) >= 1
            output(1) = 1;
        else
            output(1) = 0;
        end
        
        if outputAnalog(2) >= 1
            output(2) = 1;
        else
            output(2) = 0;
        end
        
        % The rate of the gradient descent
        alpha = 0.1;
        
        output
        realOut
        % The difference between the desired output and what is computed
        outDiff(1) = realOut(1) - output(1);
        outDiff(2) = realOut(2) - output(2);
        
        % The square mean error
        err = (1 / (2 * length(input))) * outDiff.^2;
        
        % The error and its direction
        directionalErr = err .* sign(outDiff);
        
        % The change in the weights because of the error
        for y = 1:2
          deltaW(:,y) = (alpha * weights(y, :) .* directionalErr);
        end
        % The new weights
        weights = weights + deltaW; 
    end
    out = weights;
end
