t0=0;
T=2;
y0=1;
phi=@(t,y)[y];
N=10;
t10=linspace(t0,T,N)
u10=cauchyExplicite(t0,T,y0,N,phi);