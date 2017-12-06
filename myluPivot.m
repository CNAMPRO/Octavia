function [L,U,P]=myluPivot(A)
  [n,m]=size(A);
  if n~=m
    error('A non carree');
  else
    tol=1.0e-9;
    P = eye(n);
    for k=1:n-1
      [maxVal iPivot] = max(abs(A(k:n,k)));
      iPivot+=k-1;
      A([k iPivot],:)=A([iPivot k],:);
      P([k iPivot],:)=P([iPivot k],:);
      for i=k+1:n
        A(i,k)=A(i,k)/A(k,k);
        A(i,k+1:n)=A(i,k+1:n)-A(i,k)*A(k,k+1:n);
      end
    end
    U=triu(A);
    L=tril(A,-1)+eye(n);
  end
end