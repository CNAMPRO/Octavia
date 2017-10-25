function [y]=naiveEval2(alpha,x)
  y=zeros(size(x));
  for k=size(alpha):-1:1
    y=alpha(k)+x.*y;
  end
end