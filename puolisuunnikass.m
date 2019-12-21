function C = puolisuunnikass(f, a, b, n)
% Puolisuunnikass��nt� integroinnin likiarviointiin.
% f -funktio
% a-b - integroitava v�li
% n - v�lien m��r�
h = (b-a)/n;
C=0;
for x = a:h:(b-h)
    C = C + 0.5 * (f(x)+f(x+h)) * h;
end
