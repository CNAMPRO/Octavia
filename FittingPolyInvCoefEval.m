function FittitPolynomialEval(alpha,x,m)
  y=zeros(size(x))
  for i=1:m+1
    y = y + alpha(i)*x.^(i-1);
  end
end