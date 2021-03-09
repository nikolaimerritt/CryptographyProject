n = sym('99512831474559074447420587631965683245067975322122894835681');
a = sym(5);

remainders = strongTestRemainders(n, a)
if passesStrongTest(remainders, n)
    fprintf('n could be prime.\n'); 
else
    fprintf('n is certainly composite.\n');
end


% 1 (b)

gcdsOfIncrementedRems = sym(zeros(1, length(remainders)));
gcdsOfDecrementedRems = sym(zeros(1, length(remainders)));
for i = 1 : length(remainders)
    gcdsOfIncrementedRems(i) = sym(gcd(remainders(i) + 1, n));
    gcdsOfDecrementedRems(i) = sym(gcd(remainders(i) - 1, n));
end

gcdsOfIncrementedRems
gcdsOfDecrementedRems

primeFactors = sym(zeros(1, 0));
for g = [gcdsOfIncrementedRems gcdsOfDecrementedRems]        
    if ~ismember(g, primeFactors) && isprime(g)
        primeFactors = [primeFactors g];
    end    
end
primeFactors