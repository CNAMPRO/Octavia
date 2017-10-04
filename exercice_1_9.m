## Resound automatiquement le K manquant pour trouver le determinant
%determinant=@(k)[det([1 k; 2 3])]
%fsolve(determinant, 0)
%
%rank([1 2 8; 2 1 4; 0 3 12]) ## Trouve le rang d'une matrice
%rank([2 1 3; 8 4 12; 1 2 0])
%det([0 0 1 0; 2 3 7 4; 3 1 12 0; 4 0 -5 0]) ## Calcul du determinant ( on choisi une une valeur non nulle et on supprime la ligne et colonne lui appartenant et on continue
%det([0 2 3 4; 1 7 12 -5; 0 3 1 0; 0 4 0 0])


%
%x = [pi/6 pi/4 pi/3]
%s = sin(x)
%c = cos(x)
%t = s./c # calcule bien dans le vecteur et retourne 3 valeurs
%t = s/c # additionne les 3 valeurs

%x = [1; 2; 3];
%y = [4; 5; 6];
%v = x.^2
%b = sum(x.^2)
%s = y'*x
%d = dot(x,y)
%u = x.*y
%p = x.^x
%c = cross(x,y)


n = 500;
sum([1:n])
n*(n+1)/2

sum([1:n].^2)
n*(n+1)*(2*n+1)/6


imp=sum(1:2:n) # Somme des impairs
pair=sum(2:2:n) # somme des pairs