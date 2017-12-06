function [L,U]=myluImprov(A)
  [n,m] = size(A);
  if n~=m
    error('A n''est pas une matrice carrée');
  else
    tol=1.0e-9;
    for k=1:n-1
      for i=k+1:n
        if abs(A(k,k))<tol
          error('Utiliser pivot');
        else
          A(i,k) = A(i,k)/A(k,k);
          A(i,k+1:n)=A(i,k+1:n)-A(i,k)*A(k,k+1:n);
        end
      end
    end
    U=triu(A);
    L=tril(A,-1)+eye(n);
  end
end