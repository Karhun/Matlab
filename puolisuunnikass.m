function C = puolisuunnikass(f, a, b, n)
% Puolisuunnikassääntö integroinnin likiarviointiin.
% f -funktio
% a-b - integroitava väli
% n - välien määrä
h = (b-a)/n;
C=0;
for x = a:h:(b-h)
    C = C + 0.5 * (f(x)+f(x+h)) * h;
end
