function [alpha]=fittingpolynomialPoly(P,m)
  V(1:m+1,1) = sum( P(:,1).^(0:m) );
  b(1:m+1)=sum( P(:,2).*(P(:,1)).^(0:m) );
  for c=2:m+1
    V(1:m,c) = V(2:m+1,c-1);
    V(m+1,c) = sum( P(:,1).^(m+c-1) );
  end
  alpha = V\b’;
end