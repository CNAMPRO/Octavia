function x=syslin(A,b)
  [L,U]=myluImprov(A);
  y = descente(L,b)';
  x = remontee(U,y)';
end