%Yläkolmiomatriisin funtio x=U_solve.m
%@Anette Karhu
function x=U_solve(A,b)
n=length(b);
x=zeros(n,1);
x(n)=b(n)/A(n,n);
for i=n-1:-1:1
    x(i)=b(i);
    for j=1+1:1:n
       x(i)=x(i)-A(i,j)*x(j); 
    end
    x(i)=x(i)/A(i,i);
end
end