p  = sym('99145399569186411432799');
q = sym('314873624753');

% (4a)
g_0 = 2;
x = sym('125001057271');
rem = @(g0) feval(symengine, 'powermod', g0, (p - 1)/q, p);

while rem(g_0) == 1
    g_0 = sym(randi(p - 1));
end
g = rem(g_0);

y = feval(symengine, 'powermod', g, x, p);
fprintf("y = %s\n", y);

% (4b)
H = sym('259989565575');
r = sym('89602878941');
s = sym('115571347129');

if r >= p || s >= q
    fprintf("r or s are not in range\n");
else
    u1 = solveMultCongruence(s, H, q);
    u2 = solveMultCongruence(s, r, q);
    
    % by modular arithmetic, we can work out the remainders separately
    gRemainder = feval(symengine, 'powermod', g, u1, p);
    yRemainder = feval(symengine, 'powermod', y, u2, p);
    remainder = mod(gRemainder * yRemainder, p);
    
    if mod(remainder, q) == r
        fprintf('Signiature is valid!\n');
    else
        fprintf('Signiature is invalid, although r and s are in range.\n');
    end
end
