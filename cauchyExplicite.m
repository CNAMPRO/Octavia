function [u]=cauchyExplicite(t0, T, y0, N, phi)
  t=zeros(N,1);
  y=zeros(N,1);
  t(1)=t0;
  u(1)=y0;
  h=(T-t0)/N;
  t=linspace(t0,T,N);
  for n=1:N
    u(n+1) = u(n) + h*((phi(t(n-1), u(n-1)) - phi(t(n), u(n)))/2);
    %error: t(0): subscripts must be either integers 1 to (2^31)-1 or logicals
  end
end