function prime = smallestSpecialPrimeGreaterThan(coeff, S, pow)
    % This is the general solution for 2(a). 
    % A special prime p is one where (p - 1) / 2 is also prime

    p = coeff * S^pow + 1;
    i = 1;
    while 1
        prime = nextprime(p);
        if isprime((prime - 1) / 2)  
            return
        else
            p = prime + 1; % prime + 1 will not be prime, since prime is odd
            i = i + 1;
        end 
    end
end

