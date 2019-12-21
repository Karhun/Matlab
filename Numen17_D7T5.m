% Numen17 Demo 7 Teht‰v‰ 5
% Ratkaistaan toisenkertaluvun differentiaaliyhtalo Rungen-Kutta
% menetelmalla
%
%Funktio
func = ' -sin(y)';
% Alkum‰‰rittelyt
x_0=0;
y_0=0;
n=40;
a=0;
b=3.2;

dtdy2(1)=0.5;
x=linspace(a, b, n)

% Muunnetaan funktio k‰ytett‰v‰‰n muotoon
f = (@(y)func);

% Rungen-Kutta 2. kertaluku, Heunsin metodi
h=(b-a)/n;
y=zeros(1,n+1);
for n=1:n
y(1)=y_0;
k_1 = f( y(n));
k_2 = f( y(n)+h.*k_1);
y(n+1,:) = y(n,:) + h/2.*f( k_1 + k_2 );
end



