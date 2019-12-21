function  likiarvointegraalille( f, x )
% Funktio puolisuunnikassäännön laskemiseen.
% h on osavälin pituus
h=1/2;
%Väli [0,2] viiden pisteen avulla
x=linspace(0,2,5);
%f(x)=exp(-sqrt(x.^2+1))
f=exp(-sqrt(x.^2+1));
% Puolisuunnikassääntö viiden pisteen avulla.
A = h*(f(1)/2+f(2)+f(3)+f(4)+f(5)/2)
% Integraalin laskeminen Simpsonin säännöllä.
B = h/3*(f(1)+4*f(2)+2*f(3)+4*f(4)+f(5))
end

