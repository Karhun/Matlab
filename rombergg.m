function I = rombergg(f, a, b, r)
% Rombergin menetelm� integraalin likiarvon laskemiseen
% f - integroitava funktio
% a-b - integrointiv�li
% r - rivien m��r� Rombergin taulukkoon
I = zeros(r, r);
for k=1:r
    %Puolisuunnikass��nt�
    I(k,1) = puolisuunnikass(f, a, b, 2^(k-1)); 
    % Rombergin rekursio
    for j=1:k-1
        I(k,j+1) = (4^j * I(k,j) - I(k-1,j)) / (4^j - 1);
    end
  %Py�ristet��n tulos 3 desimaaliin
 A=round(I,3)   
end
