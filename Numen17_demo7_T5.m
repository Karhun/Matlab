% Numen17_demo7_T5
%
% Ratkaistaan y''=-sin(y) , missa y0=0 ja y'0=0.5
 y0=0;
 dfdy=0.5; %y'0=0.5=k1
 h=0.008;
 
 %y=0:0.08:3.2;
 y=linspace(0, 3.2, 100);
 % Kun -sin(y) derivoidaan kahdesti saadaan y=sin(y), eli oikea vastaus.
 yoikea= sin(y);
 
 % 2.kertaluvun Rungen-Kutta menetelmä
 rk2=y0;
 for i=1:(length(y)-1)
    k1 = dfdy; 
    y1 = -sin(k1);    
    k2 = -sin(y1)+h*k1;       
    rk2(i+1) = y(i) + (h/2)*(k1 + k2)
 end

% Piirretaan approksimaatio ja oikea tulos.
plot(y,yoikea,y,rk2);
legend('Oikea vastaus','Approksimaatio Runge-Kutta');