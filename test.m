## fonction a la volee
f='1./(1+x.^2)'
fplot(f,[-2,6])

## function anonym
f=@(x)[1./(1+x.^2)]
fplot(f,[-2,2])
x=0;
y=f(x)
y=feval(f,x)
x=[-2:0.5:2];
y=f(x);
plot(x,y,'-o')