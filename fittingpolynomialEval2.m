function [y]=fittingpolynomialEval2(alpha,x)
  y=zeros(size(x));
  for i=1:length(alpha)
    y+=alpha(i)*x.^(i-1);
  end
end
