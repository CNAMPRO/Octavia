function [u]=eulerexplicite(t0, T, y0, N, phi)
  t=zeros(N,1);
  y=zeros(N,1);
  t(1)=t0;
  u(1)=y0;
  h=(T-t0)/N;
  t=linspace(t0,T,N);
  for n=1:N-1
    %phin=feval(phi, t(n), u(n));
    u(n+1) = u(n)+h*phi(t(n), u(n));
  end
end