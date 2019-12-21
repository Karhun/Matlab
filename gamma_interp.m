function gamma_interp(n)
%
% Muodostetaan n-asteinen interpolaatiopolynomi.
% Lasketaan n+1 pistetta funktiosta Gamma(x) valilla [0.1,4]:
%
a=0.1; b=4; 
k=0;
xc=zeros(1,n+1);  % interpolaatiopisteita on yksi enemman kuin aste !
for i=0:n
    k=k+1;
    xc(k)=cos((2*i+1)*pi/(2*n+2));
end
xu=linspace(a,b,n+1);        % tasavaliset pisteet
xc=0.5*(a+b)+0.5*(b-a)*xc;   % Tshebyshevin pisteet
fu=gamma(xu);
fc=gamma(xc);
%
% Newtonin jaetut differenssit:
%
du = divdif(xu,fu);
dc = divdif(xc,fc);
%
% Piirretaan interpoloitava funktio, interp. pisteet ja interp. polynomi:
%
m=150;
z = linspace(a,b,m);
wu=zeros(1,m);
wc=zeros(1,m);
for i=1:m
  wu(i)=interp(xu,du,z(i));
  wc(i)=interp(xc,dc,z(i));
end
subplot(2,1,1)
plot(z,wu,xu,fu,'o',z,gamma(z),'--');
axis([0 4.5 0 10]);
legend('p_n(x)','interp. pisteet','\Gamma(x)','location','North')
title(sprintf('Tasavalinen pisteisto (n=%d)',n))
subplot(2,1,2)
plot(z,wc,xc,fc,'o',z,gamma(z),'--');
axis([0 4.5 0 10])
title(sprintf('Tshebyshevin pisteisto (n=%d)',n));
legend('p_n(x)','interp. pisteet','\Gamma(x)','location','North')
