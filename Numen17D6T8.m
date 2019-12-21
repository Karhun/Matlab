% Numen17 Demo 6, Ohjelmointitehtävä 8
% Anette Karhu

%Lasketaan integraali annetulle funktiolle Gauss-Legendren kaavalla
% Annettu funktio, jonka integraali halutaan laskea
I=@(x,y,z) sin(x.^2 + y.^2 + z.^2);

%Tehtävän annon väli, ei anna tarkkaa arvoa.. Miksi?
A=gausleg3D(I, 0,1,0,1,0,1)

%Oikea integraalin arvo
Aoikea = integral3(I, 0,1,0,1,0,1)

% Jaetaan väliä tiheämmäksi, virheen pienentämiseksi.
N=10;
P=linspace(0,1,N);
S=0;
for i=1:N-1
   alkux=P(i);
   loppux=P(i+1);
   for j=1:N-1
      alkuy=P(j);
      loppuy=P(j+1);
      for k=1:N-1
         alkuz=P(k);
         loppuz=P(k+1);
         S=S+gausleg3D(I,alkux,loppux,alkuy,loppuy,alkuz,loppuz);
      end
   end
end
S