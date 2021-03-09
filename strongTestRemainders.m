function remainders = strongTestRemainders(n, a)
% Returns the remainders used in the Strong Primality Test algorithm
% Uses a to run the test
    if gcd(n, a) ~= 1
        error('n and a should be coprime.');        
    elseif mod(n, 2) ~= 1
        error('n should be odd.');
    end
    
    % finding r and s:
    for rTest = 0 : floor(log2(n - 1))
        sTest = (n - 1) / 2^rTest;
        if sTest == floor(sTest) && sTest / 2 ~= floor(sTest / 2)
            r = rTest;
            s = sTest;
            break;
        end
    end
    % r and s found. now finding remainders
    remainders = sym(zeros(1, double(r) + 1));
    for i = 0 : r
        pow = sym(s) * 2^i;
        remainders(i + 1) = sym(feval(symengine, 'powermod', a, pow, n));
    end
    return
end

