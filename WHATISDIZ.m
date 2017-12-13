clc; clear all;
A = [95/100 20/100; 80/100 5/100 ]
x_init = [1/4; 3/4]
n = 1
x_365 = A^n*x_init
[V,D]=eig(A);
x_356 = V*D^n*inv(V)*x_init


