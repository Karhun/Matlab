%Jacobiaanin laskemisen funktio jakobiaaninlasku
%@Anette Karhu
function jakobiaaninlasku(x,y,z)

syms x y z;
F = [x^4+y^4-1; -sin(5*x)+y; x-z^2];
J = jacobian([x^4+y^4-1; -sin(5*x)+y; x-z^2], [x; y; z;]);

subs(J, [x y z], [0 1 1])
end

