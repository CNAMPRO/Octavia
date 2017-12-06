function [x,r,k]=jacobi(A,b,XINIT,tol,KMAX)
  n = length(b);
  k = 0;
  XOLD = XINIT;
  r = norm(A*XOLD'-b);
  while((r>=tol) && (k<=KMAX))
    for i=1:n
      j = [1:i-1,i+1:n];
      x(i) = (b(i) - sum(A(i,j).*XOLD(j)))/A(i,i);
    end
    k+=1;
    XOLD = x;
    r = norm(A*XOLD'-b);
  end
end