% Methode rectangle ou point du milieu
function [Int]=milieu(a,b,f,m)
  h=(b-a)/m;
  x=[(a+h/2):h:b];
  y=f(x);
  Int=h*sum(y(1:end));
end