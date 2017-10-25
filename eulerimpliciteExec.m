t0=0;
T=2;
y0=1;
phi=@(t,y)[y];

N=10;
t10=linspace(t0,T,N);
u10=eulerimplicite(t0,T,y0,N,phi);

N=50;
t50=linspace(t0,T,N);
u50=eulerimplicite(t0,T,y0,N,phi);


N=100;
t100=linspace(t0,T,N);
u100=eulerimplicite(t0,T,y0,N,phi);
plot(t10,u10,'*-',t50,u50,'0-',t100,u100,'+-')
