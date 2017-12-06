function invA=myInv(A)
  [n,m]=size(A);
  for j=1:n
    b=zeros(n);
    b(j)=1;
    invA(:,j)=syslin(A,b);
  end
end