% Lagrangen interpolaatiopolynomi
function lagrangepol(n)
a=-6;
b=6;
x=-6:0.1:6;
y=f(x);
% Tsebysevin pisteet
for i=1:n
    xsamples(i)=cos((2*i+1)*pi/(2*n))
end
%  funtion saamat arvot Tsebysevin pisteill�
fsamples(i)=f(xsamples(i))

% Lagrangen interpolaatio tsebysevin pisteill�.
fxn = Lagpoly(x,xsamples,fsamples,100)
title('Lagrangen interpolaatiopolynomi')
plot(x,y)
hold on
plot(x,y,'o')

%Interpoloitava funktio
function y =f(x)
y=x./(x.^2+1);