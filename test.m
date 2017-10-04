x=0;
y=f(x)
x=[-2:0.5:2];

y=feval(@f,x)
fplot(@f,[-2,2])
