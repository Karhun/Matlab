% Lagrangen polynomi yleisessä muodossa.
function fxn = Lagpoly(x,xsamples,fsamples,n)
fxn=0*x;
% Virheen tarkistus
if n > length(fsamples)-1
    disp('Liian vähän pisteitä')
    return
end 
for i= 1:n
    %alustus
    Li = 0*x+1;
    % Lagrangen rekursio
    for j = 1:n
        if i ~=j
            xi=xsamples(i+1);
            xj=xsamples(j+1);
        Lnext= (x-xj)/(xi-xj);
       Li = Li.*Lnext;
        end
    end
    %Lagrangen polynomi
    fxn=fxn+ Li*fsamples(i+1);
end

    