function [x] = solveMultCongruence(a, b, m)
% solves congruence of the form ax = b  mod m
    
    if gcd(a, m) ~= 1
        error('gcd(a, m) is not 1');
    else
        % finding the inverse of a
        [~, u, ~] = gcd(a, m);
        aInv = mod(u, m);
        
        % x = aInv * b  mod m
        x = mod(aInv * b, m);
        return
    end
    
end

