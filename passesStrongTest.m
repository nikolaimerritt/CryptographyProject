function isProbablePrime = passesStrongTest(remainders, n)
% Runs the Strong Primality Test on the already-calculated strong test remainders.
% Returns 1 if the remainders pass the strong test, and 0 if they fail

    isProbablePrime = 0; % assume not prime. trying to prove otherwise

    if remainders(end) == 1
        % finding the index of the first 1 in the array
        firstOneIdx = -1;
        for i = 1 : length(remainders)
            if remainders(i) == 1
                firstOneIdx = i;
                break;
            end
        end               

        if firstOneIdx ~= -1 % if there is a 1 at all
            if firstOneIdx == 1 || remainders(firstOneIdx - 1) == n - 1
                isProbablePrime = 1;
            end
        end
    end
    return
end
