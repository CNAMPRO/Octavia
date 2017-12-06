A = [1 0 3; 2 2 2; 3 6 4];
b = [4;6;13];
x = syslin(A,b);
disp ("La résolution par syslin:"), disp (x)
x0ctave = A\b;
disp ("La résolution par Octave:"), disp (x0ctave)
Ax = A*x;
disp ("Ax = A*x"), disp(Ax)