function y=interp(x,d,t)
n=length(x)-1;
y = d(n+1);
for i=n-1:-1:0
  y = d(i+1) + (t-x(i+1))*y;
end
