N=50;
t50=linspace(t0,T,N)
u50=eulerexplicite(t0,T,y0,N,phi);
N=100;
t100=linspace(t0,T,N)
u100=eulerexplicite(t0,T,y0,N,phi);
plot(t10,u10,t50,u50,t100,u100)
