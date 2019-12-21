function [x, error] = newton( F_funktio, J_funktio, x, epsilon, itmax )
%Newtonin menetelmä algoritmi 3.7 mukaillen tehty funktio newton.
%@Anette Karhu

error=0;


for k=1:1:itmax
   f_k=F_funktio(x);
   if norm(f_k)<= epsilon
      return
   end
   h = J_funktio(x)\(-f_k);  
   x = x + h;
   
end
error=1;
end

