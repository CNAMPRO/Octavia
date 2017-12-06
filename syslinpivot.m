function x=syslinpivot(A,b)
  [L,U,P]=myluPivot(A);
  y=descente(L,P*b)';
  x=remontee(U,y)';
end