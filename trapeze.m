function [Int]=trapeze(a,b,f,m)
  h=(b-a)/m;
  x=[a:h:b];
  y=f(x);
  Int=