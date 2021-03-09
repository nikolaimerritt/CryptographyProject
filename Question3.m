S = sym(10364803);
p = sym('866344880029504985589518345000808681374788854757259'); % result from Q2

% (3a)
g = feval(symengine, 'numlib::primroot', p);
x = S^2;
y = feval(symengine, 'powermod', g, x, p);

% (3b)
c1 = sym('807471054277956375271175510952170358709402130810697');
c2 = sym('71072452985306839955023737672929935112378223380303');

% by modular arithmetic, a * b^(p - 1 - x) mod p =
% remainder of b^(p - 1 -x) mod p * remainder of a  mod p
c1DecryptedPart = feval(symengine, 'powermod', c1, p - 1 - x, p);
c2DecryptedPart = mod(c2, p);
decrypted = mod(c1DecryptedPart * c2DecryptedPart, p);
fprintf('decrypted message is %s\n', string(decrypted));