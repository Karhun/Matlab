function [ V ] = gausleg3D( func ,a,b,c,d,e,f)
%Gauss Legendre 3 pisteen kaavan funktio.
% Anette Karhu
m=3;%three point rule

% Taulukon x_i ja w_i arvot kolmen pisteen Gauss Legendren laskemiselle.
x1=-sqrt(3/5);
x2=0;
x3=sqrt(3/5);
w1=5/9;
w2=8/9;
w3=5/9;

w=[w1 w2 w3];
x=[x1 x2 x3];
V=0;
% Gauss Legendren laskeminen kolmen muuttujan suhteen
for k=1:1:m
   for j=1:1:m
      for i=1:1:m
         V = V + w(i)*w(j)*w(k) *func( (f-e)/2 *x(i) +(f+e)/2, (d-c)/2 * x(j) + (d+c)/2 , (b-a)/2 * x(k) + (b+a)/2 );
      end
   end
end
% Kerrotaan yhteen vielä summien ulkopuolella olevat kertoimet
V = V * ((b-a)/2) * ((d-c)/2) * ((f-e)/2);     

end

