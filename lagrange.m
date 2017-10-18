## Interpolation La grange
function [y]=lagrange(P, x)
  % On reprend le meme principe
  [l,c]=size(P);
  % l = taille des colonnes
  % c = taille des lignes
  % Vecteur ligne de 0 de la taille de x
  y = zeros(size(x));
  for i=1:l %taille de de colonne 
    % Vecteur ligne de la taille ligne de P
    Li=ones(size(x)); 
    % /!\ Pour j allant de 1 a l en sautant le i /!\
    for j=[1:i-1, i+1:l] % Evite de faire le test j!=i ( j~=0)
      % /!\ formule Lagrange -> Le produit des (x-xi)/(xi-xj)
      Li.*=(x-P(j,1))/(P(i,1)-P(j,1));
    end
    % /!\ Formule Lagrange -> La somme des Yi(Li(x)) /!\
    y+=P(i,2)*Li;
  end
end
  
  