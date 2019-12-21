function I = rombergg(f, a, b, r)
% Rombergin menetelmä integraalin likiarvon laskemiseen
% f - integroitava funktio
% a-b - integrointiväli
% r - rivien määrä Rombergin taulukkoon
I = zeros(r, r);
for k=1:r
    %Puolisuunnikassääntö
    I(k,1) = puolisuunnikass(f, a, b, 2^(k-1)); 
    % Rombergin rekursio
    for j=1:k-1
        I(k,j+1) = (4^j * I(k,j) - I(k-1,j)) / (4^j - 1);
    end
  %Pyöristetään tulos 3 desimaaliin
 A=round(I,3)   
end
