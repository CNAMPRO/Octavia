function [x,r,k]=GS(A,b,XINIT,tol,KMAX)
  n = length(b);
  k = 0;
  XOLD = XINIT;
  x = XINIT;
  r = norm(A*x'-b);
  while((r>=tol) && (k<=KMAX))
    for i=1:n
      j = [1:i-1,i+1:n];
      x(i) = (b(i) - sum(A(i,j).*x(j)))/A(i,i);
    end
    k+=1;
    XOLD = x;
    r = norm(A*XOLD'-b);
  end
end