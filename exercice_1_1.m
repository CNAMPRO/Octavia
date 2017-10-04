
# Exercice 1.1
# Somme et produit de matrices, calcul du determinent et de l’inverse d’une matrice :

%A=[1 2 3; 4 5 6]
%B=[7 8 9; 10 11 12]
%C=[13 14; 15 16; 17 18]
%AB = A+B
%AC = A*C
%
#A+C # Matrices ne sont pas de meme dimensions 2x3 3x2
%MAT = [1 2; 3 5]
%inv(MAT) # Doit etre une matrice carree
#det(A)
%A=[1 2; 0 0]
%inv(A)
##
%v=[2 5 10]
%A=diag(v,-1) # Deuxieme param decale la diagonale 
%v=[2]
%A=diag(v,-1)
%A =[3 1 2; -1 3 4; -2 -1 3]
%L1=tril(A)
%L2=tril(A,-1)

