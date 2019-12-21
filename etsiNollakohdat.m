%%Etsi nollakohdat annetulta funktiolta
%@Anette Karhu

syms x y z;
F = [x^4+y^4-1; -sin(5*x)+y; x-z^2];
J = jacobian([x^4+y^4-1; -sin(5*x)+y; x-z^2], [x; y; z;]);
F_funktio = matlabFunction(F, 'Vars', {[x; y; z]});
J_funktio = matlabFunction(J, 'Vars', {[x; y; z]});

x_test = [0; 1; 1];
epsilon= 0.00000001;
itmax=100;

possible_solutions = [];
step=0.2;
[X, Y, Z] = ndgrid(0:step:1, -1:step:1, -1:step:1);
for i=1:numel(X)
   x_initial = [X(i); Y(i); Z(i)];
   [x_vastaus, error] = newton(F_funktio, J_funktio, x_initial, epsilon, itmax);
   if error == 0
      possible_solutions = [possible_solutions, x_vastaus];
   end
end

disp('done!')
%% etsi uniikit ratkaisut
solutions = [];
for i = 1:1:length(possible_solutions)
   x_kandidaatti = possible_solutions(:,i);
   if length(solutions) == 0
      solutions = [x_kandidaatti];
   else
      for k = 1:size(solutions,2)
         temp = [];
         d = solutions(:,k)-x_kandidaatti;
         if norm(d)>1000*epsilon
            temp =[temp, x_kandidaatti];
         end
      end
      solutions = [solutions,temp]
   end
end
