function [x,r,k]=GS(A,b,XINIT,tol,KMAX)
  n = length(b);
  k = 0;
  x = XINIT;
  r = norm(A*x'-b);
  while((r>=tol) && (k<=KMAX))
    for i=1:n
      j = [1:i-1,i+1:n];
      x(i) = (b(i) - sum(A(i,j).*x(j)))/A(i,i);
    end
    k+=1;
    r = norm(A*x'-b);
  end
end