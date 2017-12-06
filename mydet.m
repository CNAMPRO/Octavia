function d=mydet(A)
  [L,U]=myluImprov(A);
  d=prod(diag(U));
end