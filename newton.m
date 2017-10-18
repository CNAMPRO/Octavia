% Interpolation polynomiale de Newton
function [y]=newton(P,x)
  [l,c]=size(P);
  % On calcule des coef betas comme avec Lagrange
  A=zeros(l);
  A(:,1)=P(:,2);
  for j=2:l
    A(j:l,j)=(A(j:l,j-1)-A(j-1:l-1,j-1))./(P(j:l,1)-P(1:l-j+1,1));
  end
  Wi=ones(size(x));
  y=A(1,1)*Wi;
  for i=2:l
    Wi=Wi.*(x-P(i-1,1));
    y=y+A(i,i)*Wi;
  end
end