clear all
A=[2 1; 1 3]
b=[1;0]
XINIT00 = [0 0]
XINIT11 = [1 1]
[x,r,k]=jacobi(A,b,XINIT00, 1.e-9,50)
A\b
[x,r,k]=jacobi(A,b,XINIT11, 1.e-9,50)
A\b