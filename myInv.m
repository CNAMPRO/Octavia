function invA=myInv(A)
  [n,m]=size(A);
  [L,U] = mylyImprov(A);
  for j=1:n
    b=zeros(n);
    b(j)=1;
    y=descente(L,b)';
    invA(:,j)=remonteee(U,y)';
  end
end