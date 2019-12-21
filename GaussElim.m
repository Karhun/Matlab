%Funktio GaussElim.m Gaussin eliminointimenelmä yläkolmiomatriisille.
%@Anette Karhu
function [U,b]=GaussElim(A,b)
n=length(b);
for k=1:1:n-1
   for i=k+1:1:n
      z=A(i,k)/A(k,k);
      A(i,k)=0;
      for j=k+1:1:n 
          A(i,j)=A(i,j)-z*A(k,j);
      end
      b(i)=b(i)-z*b(k);
   end
end
U=A;

end
