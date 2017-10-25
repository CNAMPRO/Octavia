function [u]=eulerimplicite(t0,T,y0,N,phi)
  t=zeros(N,1);
  u=zeros(N,1);
  t(1)=t0;
  u(1)=y0;
  h=(T-t0)/N;
  t=linspace(t0,T,N);
  for n=1:N-1
    u(n+1) = fzero(@(y) y -h*phi(t(n+1),y)- u(n), u(n));
  end
end