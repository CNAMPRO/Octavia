function [alpha]=fittingPolyInvCoeff(P,m)
  [l,c]=size(P);
  for r=1:m+1
    V(r,1) = sum(P(:,1).^(r-1));
    b(r)= sum(P(:,2).*(P(:,1)).^(-r));
  end
  for c=2:m+1
    for r=1:m
      V(r,c) = V(r+1,c-1);
    end
    V(m+1,c)=  sum(P(:,1).^(m-1));
    end
    alpha = V\b';
  end