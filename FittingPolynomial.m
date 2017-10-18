% Exercice 3.20 : Fitting Poly
% WTF
%ou m <= n
function [y]=fittingPolynomial(P,x,m)
   [l,c]=size(P);
   for r=1:m+1
     % Somme des xi puissance ligne-1 
    V(r,1) = sum(P(:,1).^(r-1));
    % Colonne d'avant et on decale dun cran
    b(r)= =sum(P(:,2).*(P(:,1)).^(r-1));
  end
  for c=2:m+1
    for r=1:m
      V(r,c) = V(r+1,c-1);
    end
    % 
    V(m+1,c) = sum(P(:,1).^(m+c-1));
  end
  alpha = V\b’;
  y=zeros(size(x));
  for i=1:m+1
    y+=alpha(i)*x.^(i-1);
  end
end