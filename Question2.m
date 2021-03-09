% (2a)
S = sym(10364803);
p = sym('866344880029504985589518345000808681374788854757259'); %smallestSpecialPrimeGreaterThan(sym(698754312), S, sym(6));
q = sym('77104302820226059912914253422047577917253316213799'); %smallestSpecialPrimeGreaterThan(sym(6), S, sym(7));

fprintf("p = %s\n", string(p));
fprintf("q = %s\n", string(q));

% d is the inverse of e mod (p - 1)(q - 1)
modulus = (p - 1) * (q - 1);
d = solveMultCongruence(65537, 1, modulus);
fprintf("The private key is %s\n", string(d)); 

% (2b)
encryted = sym('23060096453016373447301025241831731838473725619573330907412480584688663591666231773072745953968896421');
decrypted = feval(symengine, 'powermod', encryted, d, p * q);

% splitting decrypted into an array of 2 digit numbers. i.e. 2104 -> [21 04]
amountOfDigits = ceil(log10(decrypted));
N = ceil(amountOfDigits / 2);
decryptedAsCharArray = char(decrypted);
decryptedAsString = "";
for i = 1 : N
    currentChars = decryptedAsCharArray(2*i - 1 : 2*i);
    currentDigitPair = str2num(currentChars);
    if currentDigitPair == 0
        decryptedAsString = strcat(decryptedAsString, " ");
    else
        decryptedAsString = strcat(decryptedAsString, char(currentDigitPair + 64));
    end
end
fprintf('The decoded message is %s.\n', decryptedAsString);




